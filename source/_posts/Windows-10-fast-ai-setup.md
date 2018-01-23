title: Windows 10 fast.ai setup
author: Derek Liang
tags:
  - AI
categories: []
date: 2018-01-20 16:03:00
---
The following steps are used for set up my machine learning environment on my Windows 10 desktop instead of renting machine from AWS.

{% codeblock lang:bash %}
>conda install python=3.5
>conda install -c peterjc123 pytorch cuda80
>conda install jupyter matplotlib seaborn pillow bcolz
>pip install opencv-python graphviz sklearn_pandas isoweek pandas_summary tqdm torchvision torchtext feather-format spacy scikit-image
>conda install -c conda-forge ffmpeg
>conda install -f numpy
>pip install theano 
>conda install mkl-service
>conda install m2w64-toolchain
>jupyter nbextension enable --py widgetsnbextension
>pip install keras tensorflow-gpu
>set PATH=%CUDA_PATH%\bin;%PATH%
>where cuDNN64_6.dll
>where curand64_80.dll
>conda install numpy scipy mkl-service libpython
>pip install parameterized
>pip install keras==1.2.2
>pip install h5py
{% endcodeblock %}

I am able to go throught the first lesson on at http://course.fast.ai/lessons/lesson1.html after complete the above setup. :)

##### reference: 
https://www.anaconda.com/download/
https://www.tensorflow.org/install/install_windows
https://github.com/cklukas/fastai/blob/master/doc/windows_setup.md