USE_HARMONICS = FALSE
setwd("~/Documents/workspace/dl_book/chapter_05")
library("tram")
library("MASS")
library("multcomp")

# loading data
if (!file.exists("analysis/DVC.rda")) {
  dir.create(file.path("analysis"), showWarnings = FALSE)
  download.file("https://zenodo.org/record/17179/files/DVC.tgz", "DVC.tgz")
  untar("DVC.tgz", file = "analysis/DVC.rda")
  file.remove('DVC.tgz')
} else{
  print("File exists")
}
load("analysis/DVC.rda")

# setup
loc <- Sys.setlocale("LC_ALL", "en_US.UTF-8")
rm(loc)

# data frame
df <- data.frame(wild = as.vector(obs[,,"wild"]),
                 day = seq(from = start, to = end, by = "30 min")[1:prod(dim(obs)[1:2])])
df$weekday <- factor(format(df$day, "%A"),
                     levels = c("Monday", "Tuesday", "Wednesday",
                                "Thursday", "Friday", "Saturday",
                                "Sunday"))
df$time <- as.numeric(difftime(df$day, start, unit = "days"))
df$year <- factor(format(df$day, "%Y"))
df$Datum <- factor(format(df$day, "%Y-%m-%d"))
df$daytime <- cut(as.numeric(difftime(df$day, trunc(df$day, "day"), unit = "hours")), breaks = c(-Inf, 12, Inf), labels = c("am", "pm"))

# extract sunrise, sunset
w <- weekdays[, c("Datum", "SAofficial", "SUofficial", "ArbZeitFaktor")]
w$Datum <- factor(format(w$Datum, "%Y-%m-%d"))

df <- merge(df, w, by = "Datum")
df$weekday[df$ArbZeitFaktor == 0] <- "Sunday"

a <- as.numeric(with(df, difftime(day, SAofficial, unit = "mins")))
df$sunrise <- cut(a, breaks = c(-Inf, -120, -15, 120, Inf), 
                  labels = c("night", "pre.sunrise", "post.sunrise", "day")) 

a <- as.numeric(with(df, difftime(day, SUofficial, unit = "mins")))
df$sunset <- cut(a, breaks = c(-Inf, -120, -15, 120, Inf), 
                 labels = c("day", "pre.sunset", "post.sunset", "night")) 

df$hours <- with(df, interaction(sunrise, sunset))[, drop = TRUE]
levels(df$hours) <- c("night", "pre.sunrise", "post.sunrise", "day",
                      "pre.sunset", "post.sunset", "night")
df$hours <- relevel(df$hours, "day")
df$daytime <- with(df, interaction(hours, daytime)[, drop = TRUE])

library(dplyr)
df = df %>% select(wild, year,time,daytime,weekday)
# Count data
# Year 2002 - 2012
# Time difference to start time in days (fractions are OK)
# What time in day starting with night.am pre.sunrise.am post.sunrise.am day.am

# # harmonics
if (USE_HARMONICS){
  sfm <- function(timevar, freq = 365, S = 10) {
    S <- 1:S * 2
    paste("I(", rep(c("sin", "cos"), length(S)), "(",
          rep(S, rep(2, length(S))), "* pi *", timevar, "/", freq, "))",
          collapse = "+")
  }
  
  Xtime <- model.matrix(as.formula(paste("~", sfm("time"))), data = df)[,-1]
  Xtime <- as.data.frame(Xtime)
  colnames(Xtime) <- paste0("tvar", 1:ncol(Xtime))
  df <- cbind(df, Xtime)
}


# trafo for transformation model
df$wild <- as.integer(df$wild)

df$day_in_year = (df$time %% 365) / 365.0
df$time = df$time / (365*10) 
# training and validation data-set
trainID <-  as.character(2002:2009)
df.train <- subset(df, year %in% trainID)
df.train$year <- droplevels(df.train$year)
df.test <- subset(df, !year %in% trainID)


# model formula
df.test$year = as.numeric(as.character(df.test$year))
df.train$year = as.numeric(as.character(df.train$year))

library(feather)
write_feather(df.test, 'deer_test.feather')
write_feather(df.train, 'deer_train.feather')



#With Cycles
if (USE_HARMONICS) {
  rhs <- paste0("year + time + day_in_year + daytime + weekday + ",paste("tvar",1:20,sep="",collapse = "+"))
}

rhs <- paste0("year + time + day_in_year + daytime + weekday")

#Original
#rhs <- paste("year + daytime * weekday +", paste("daytime:", colnames(Xtime), "", collapse = "+"))



fm <- as.formula(paste("wild ~", rhs))

# # regression models
# mNB <- glm.nb(fm, data = df.train, link = "log")
# 
# mP <- glm(fm, data = df.train, family = poisson(link = "log"))
# 
# mCp <- Coxph(fm_p1, data = df.train, order = 6,
#              log_first = TRUE,
#              support = c(1L, floor(quantile(df$wild_p1, .99))), 
#              bounds = c(0.9, Inf))
# 
# save(mP, mNB, mCp, file = "DVC_models.rda")

##########
# Saving the data
deer.train = as.data.frame(model.matrix(fm, data = df.train))
deer.train$y = df.train$wild
deer.train=deer.train[,-1] #Get rid of intercept
write.table(deer.train, file='deer_train_small.csv', sep=',', row.names = FALSE)
sum(deer.train$y)
sum(deer.train[,1])

deer.test = as.data.frame(model.matrix(fm, data = df.test))
deer.test$y = df.test$wild
deer.test=deer.test[,-1]
write.table(deer.test, file='deer_test_small.csv', sep=',', row.names = FALSE)
sum(deer.test$y)
sum(deer.test[,13])



