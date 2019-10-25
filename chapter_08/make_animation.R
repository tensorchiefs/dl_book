setwd("~/Documents/workspace/dl_book/chapter_08")
library(readr)
X = read_csv("vi.csv")
dat = read_csv('../chapter_07/nb_ch07_lr_artifical4.csv')
library(ggplot2)
library(dplyr)
library(tidyr)

# Rendering of the losses
losses = select(X, epoch, loss, loss_kl,loss_mse)
losses$loss_tot = losses$loss
losses$loss = NULL
d = gather(losses, key='loss_type', value = 'loss', -'epoch')
d$epochs_all = d$epoch
d$epoch = NULL
unique(d$loss_type)
ggplot(d) + geom_line(aes(x=epochs_all, y=loss, color=loss_type), alpha=0.8) + ylim(0,100)

epochs = c(1:25, seq(25,75,4), seq(75,150,8),seq(150,1000,20),seq(1000,5000,50),seq(5000,10000,500))
#epochs = seq(5000,10000,500)
print('Number of epochs to render ')
print(length(epochs))
library(gganimate)
#X$toprint = paste0("epoch ", X$epoch, " loss ", X$loss)
X$toprint = paste0("epoch ", X$epoch)
last_frame = length(epochs)
xv = data.frame(x=X$w0, y=X$w2)

#Print a few lines
xvgrads = data.table::data.table(mua=X$w0, mub=X$w2, grad_mua=X$wg0, grad_mub=X$wg2)
xvgrads[1:3]

require(grid)
print("Starting to render movement")

make_movie = function(epochs) {
  ggplot(X[epochs,]) +
    geom_line(data=xv,aes(x=x,y=y), size = 0.5, col='grey')+
    geom_point(aes(x=w0,y=w2), col='blue', alpha = 0.6, size = 4)+
    #geom_segment(aes(x=w0,y=w2,xend=w0-0.05*wg0,yend=w2-0.05*wg2)) +
    geom_segment(aes(x=w0,y=w2,xend=w0-0.05*wg0,yend=w2-0.05*wg2), arrow=arrow()) +
    geom_label(aes(x=w0,y=w2,label=toprint), hjust = -0.3) + 
    xlab(expression(mu[a])) +
    ylab(expression(mu[b])) +
    xlim(1,1.8)+
    theme_classic(base_size = 22)
}
first_frame = make_movie(1)
first_frame
ggsave('fit_8.rep.pdf',first_frame)

left = make_movie(epochs) + transition_manual(epoch)   
left_gif = animate(left,nframes=last_frame)
left_gif
anim_save('vi_ab.gif', left_gif)


print("Starting to loss movement")
make_lk = function(epochs){
  ggplot(X[epochs,]) +
    geom_segment(aes(x=epoch, xend=epoch+1), y=0, yend=40, size=1.5)+
    geom_line(data=d,aes(x=epochs_all, y=loss, color=loss_type), alpha=0.7) +
    ylim(0,40) +
    theme_minimal(base_size = 22) +
    theme(legend.position=c(0.8,0.8)) +
    transition_manual(epoch)  
}
make_lk(1)
m = make_lk(epochs)
m_gif = animate(m,nframes=last_frame)

anim_save('vi_ab_loss.gif', m_gif)

print("Starting to combine")
library(magick)
a_mgif <- image_read(left_gif)
m_mgif <- image_read(m_gif)
new_gif<-image_append(c(a_mgif[1], m_mgif[1]))
for(i in 2:(length(epochs)-3)){
  combined <- image_append(c(a_mgif[i], m_mgif[i]))
  new_gif<-c(new_gif,combined)
}

print("Starting to save gif")
anim_save('vi_ab_movie_and_loss.gif', new_gif)
#Works
# ffmpeg -i vi_ab_movie_and_loss.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" vi_ab_movie_and_loss.mp4
#anim_save('vi_ab.mp4', new_gif) #crashes my machine

