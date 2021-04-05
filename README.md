# dl_book github
https://tensorchiefs.github.io/dl_book/

# Book
<a href="https://www.manning.com/books/probabilistic-deep-learning-with-python?a_aid=probabilistic_deep_learning&a_bid=78e55885">
<img src="https://images.manning.com/360/480/resize/book/1/cd737fc-545a-4d76-ac6f-d1b048157dbc/Durr-PDL-HI.png" width="30%">
</a>

The book is availibe [https://www.manning.com/books/probabilistic-deep-learning-with-python](https://www.manning.com/books/probabilistic-deep-learning-with-python?a_aid=probabilistic_deep_learning&a_bid=78e55885)


### Note on the code

All examples in the book, except nb_06_05, are tested with the 2.0 of TensorFlow (TF) and the 0.8 version of TensorFlow Probability. The notebooks nb_ch03_03 and nb_ch03_04, describing the computation graph, are easier to understand in version 1 of TF. For these, we also include both versions. The nb_06_05 is only working with tf 1 (we need weights which are only provided in TF 1.0)  

You can execute the notebooks in google colab or locally. Colab is great, you can simply click on a link and you can play with the code in the cloud. No installation, you just need a browser. We definitely suggest that you to go this way. But, TensorFlow is still moving fast, and we cannot guarantee the code will run in several years. We, therefore, provided a docker container https://github.com/oduerr/dl_book_docker/ which you can use to execute all notebooks except nb_06_05 and the TF 1.0 versions of nb_ch03_03 and nb_ch03_04 run in this container. This docker container is also a way to go if you want to use the notebooks locally.
