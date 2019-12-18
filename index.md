---
layout: default
mathjax: true
title: Probabalistic Deep Learning with Python
---

<a href="https://www.manning.com/books/probabilistic-deep-learning-with-python?a_aid=probabilistic_deep_learning&a_bid=78e55885">
<img src="https://images.manning.com/720/960/resize/book/f/433a556-0816-4a6d-aa1a-6c199f368b1a/Durr-PDLP-MEAP-HI.png" width="20%">
</a>

# Notebooks overview

You can use the notebooks below by clicking on the Colab Notebooks link or running them locally on your machine. 

To run them locally, you can either 

* install the required software (Python with TensorFlow) or 
* use the provided Docker container as described here [Link will follow upon finishing the book].  

## Chapter 2: Neural network architectures

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        | Banknote classification with fcNN |[nb_ch02_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_01.ipynb) |[nb_ch02_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_01.ipynb)|
| 2        |MNIST digit classification with shuffling|[nb_ch02_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_02.ipynb) |[nb_ch02_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_02.ipynb)|
| 2a        |MNIST digit classification with fcNN|[nb_ch02_02a](https://github.com/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_02a.ipynb) |[nb_ch02_02a](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_02a.ipynb)|
| 3        |CNN edge lover|[nb_ch02_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_03.ipynb) |[nb_ch02_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_03.ipynb)|
| 4        |Causal and time dilated convolutions|[nb_ch02_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_04.ipynb) |[nb_ch02_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_02/nb_ch02_04.ipynb)|

## Chapter 3: Principles of curve fitting

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |Gradient descent method for linear regression with one tunable parameter |[nb_ch03_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_01.ipynb) |[nb_ch03_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_01.ipynb)|
| 2        |Gradient descent method for linear regression |[nb_ch03_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_02.ipynb) |[nb_ch03_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_02.ipynb)|
| 3        |Linear regression with TensorFlow |[nb_ch03_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_03.ipynb) |[nb_ch03_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_03.ipynb)|
| 4        |Backpropagation by hand |[nb_ch03_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_04.ipynb) |[nb_ch03_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_04.ipynb)|
| 5        |Linear regression with Keras |[nb_ch03_05](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_05.ipynb) |[nb_ch03_05](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_05.ipynb)|
| 6        |Linear regression with TF Eager |[nb_ch03_06](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_06.ipynb) |[nb_ch03_06](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_06.ipynb)|
| 7        |Linear regression with Autograd |[nb_ch03_07](https://github.com/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_07.ipynb) |[nb_ch03_07](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_03/nb_ch03_07.ipynb)|

## Chapter 4: Building loss functions with the likelihood approach

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |First example of the maximum likelihood principle: throwing a die |[nb_ch04_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_01.ipynb) |[nb_ch04_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_01.ipynb)|
| 2        |Calculation of the loss  function for classification |[nb_ch04_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_02.ipynb) |[nb_ch04_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_02.ipynb)|
| 3        |Calculation of the loss function for regression |[nb_ch04_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_03.ipynb) |[nb_ch04_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_03.ipynb)|
| 4        |Regression fit for non-linear relationships with non-constant variance |[nb_ch04_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_04.ipynb) |[nb_ch04_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_04/nb_ch04_04.ipynb)|


## Chapter 5: Probabilistic deep learning models with TensorFlow Probability

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |Modelling continuous data with Tensoflow Probability |[nb_ch05_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_05/nb_ch05_01.ipynb) |[nb_ch05_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_05/nb_ch05_01.ipynb)|
| 2        |Modelling count data with Tensoflow Probability |[nb_ch05_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_05/nb_ch05_02.ipynb) |[nb_ch05_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_05/nb_ch05_02.ipynb)|

## Chapter 6: Probabilistic deep learning models in the wild

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |Discretized Logistic Mixture distribution |[nb_ch06_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_01.ipynb) |[nb_ch06_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_01.ipynb)|
| 2        |Regressions on the deer data |[nb_ch06_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_02.ipynb) |[nb_ch06_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_02.ipynb)|
| 3        |Getting started with flows |[nb_ch06_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_03.ipynb) |[nb_ch06_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_03.ipynb)|
| 4        |Using RealNVP |[nb_ch06_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_04.ipynb) |[nb_ch06_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_04.ipynb)|
| 5        |Fun with glow |[nb_ch06_05](https://github.com/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_05.ipynb) |[nb_ch06_05](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_06/nb_ch06_05.ipynb)|


## Chapter 7: Bayesian learning

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |Predict images with a pretrained Imagenet network |[nb_ch07_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_01.ipynb) |[nb_ch07_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_01.ipynb)|
| 2        |Bayes Linear Regression Brute Force vs Analytical |[nb_ch07_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_02.ipynb) |[nb_ch07_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_02.ipynb)|
| 3        |Bayesian model for a coin toss |[nb_ch07_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_03.ipynb) |[nb_ch07_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_03.ipynb)|
| 4        |Play with the analytical Bayes solution for linear regression|[nb_ch07_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_04.ipynb) |[nb_ch07_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_04.ipynb)|

## Chapter 7: Bayesian neural networks

| Number  |      Topic    |      Github    |      Colab    |
|:--------:|:--------------|:---------------|:--------------|
| 1        |Linear Regression the Bayesian way |[nb_ch08_01](https://github.com/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_01.ipynb) |[nb_ch08_01](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_01.ipynb)|
| 2        |Dropout to fight overfitting |[nb_ch08_02](https://github.com/tensorchiefs/dl_book/blob/master/chapter_07/nb_ch07_02.ipynb) |[nb_ch08_02](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_02.ipynb)|
| 3        |Regression case study with Bayesian Neural Networks |[nb_ch08_03](https://github.com/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_03.ipynb) |[nb_ch08_03](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_03.ipynb)|
| 4        |Classification case study with novel class |[nb_ch08_04](https://github.com/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_04.ipynb) |[nb_ch08_04](https://colab.research.google.com/github/tensorchiefs/dl_book/blob/master/chapter_08/nb_ch08_04.ipynb)|
