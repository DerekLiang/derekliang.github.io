title: Pytorch with MNIST exercise
author: Derek Liang
date: 2018-03-26 23:27:08
tags:
---
I just implemented a CNN from scratch with MNIST dataset using Pytorch. 

Here are the few things I learnt along the way:
1. The very first task is to visualize the dataset. Create a little helper utility will save time in long run.
2. Follow the algorithm as close as possible. It took me a while to find out that if the input mini batch is not randomized on every epoch, you can only get around 80% accuracy instead of above 95%.
3. Study sample code in the tutorial carefully. It took me a while to figure out how to use Cross Entropy Loss function instead of MSE, since the two functions are using totally different interface. Pytorch is a low-level API, and you need to shape the data yourself although both are loss functions.

### reference 
https://github.com/DerekLiang/neural-networks-and-deep-learning/blob/master/src/mnist.ipynb