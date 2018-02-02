docker-alpine-machine-learning
==============================

[![Docker Automated build](https://img.shields.io/docker/automated/publysher/alpine-machine-learning.svg)](https://hub.docker.com/r/publysher/alpine-machine-learning/)

A set of Alpine docker images containing the following packages:

* [`scikit-learn`](http://scikit-learn.org)
* [`scipy`](https://www.scipy.org)
* [`numpy`](http://www.numpy.org)
* [`pandas`](https://pandas.pydata.org)

It is loosely based on the [alpine-python-machinelearning](https://github.com/frol/docker-alpine-python-machinelearning) image by @frol. 
The most important changes are:

* explicit versioning
* automated docker builds  