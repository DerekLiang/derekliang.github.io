title: Python for Data Scientist
author: Derek Liang
tags:
  - AI
  - software
categories: []
date: 2018-01-23 20:25:00
---
I am learning a new computer language Python which is mandatory for machine learning. While I am working on my first home work for my first Machine Learning lesson, all my code is so far all written in Python and all presented in Jupyter Notebook format which accelerated  the learn curve.

The Python code is very concise and it comes with lots of great library. Documentation is execellent. 

The following is one of the example code that I used to read CSV file.

{% codeblock Read CSV files lang:python %}

import csv
traincsv=[]
with open(traincsvpath) as csvfile:
    csvreader = csv.DictReader(csvfile, delimiter=',')
    for row in csvreader:
        traincsv.append(row)
      

{% endcodeblock %}

The following is revised version with awesome library pandas. Not only I read the CSV file in the memory array, but also I can group and count them by using `csv.groupby('whaleID').count()`.
{% codeblock Read CSV files lang:python %}

import pandas as pd
csv=pd.read_csv(traincsvpath, sep=',')      

{% endcodeblock %}



##### reference: 
https://jakevdp.github.io/PythonDataScienceHandbook/03.08-aggregation-and-grouping.html
http://pandas.pydata.org/pandas-docs/version/0.17.0/generated/pandas.read_csv.html#pandas.read_csv

