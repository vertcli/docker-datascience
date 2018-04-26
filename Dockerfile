FROM jupyter/scipy-notebook

MAINTAINER Albert Climent Bigas <albert.climent@pervasive-tech.com>

USER root

RUN apt-get update && \
    apt-get install -y tesseract-ocr

RUN wget https://github.com/tesseract-ocr/tessdata/raw/3.04.00/fra.traineddata -P /usr/share/tesseract-ocr/tessdata

USER $NB_USER

# Install Python 3 Tensorflow
RUN conda install --quiet --yes 'tensorflow=1.0*'
RUN conda install --quiet --yes 'flask=0.12.2'
RUN conda install --quiet --yes 'google-cloud-storage=1.1.1'
RUN conda install --quiet --yes -c menpo opencv3
RUN pip install moviepy
RUN conda install --quiet --yes ffmpeg -c conda-forge
RUN conda install --quiet --yes 'xmltodict=0.11.0'
RUN conda install --quiet --yes 'google-api-python-client'
RUN conda install --quiet --yes gensim
RUN conda install --quiet --yes 'xgboost=0.6'

# Install Python 2 Tensorflow
RUN conda install --quiet --yes -n python2 'tensorflow=1.0*'
RUN conda install --quiet --yes -n python2 'flask=0.12.2'
RUN conda install --quiet --yes -n python2 'google-cloud-storage=1.1.1'
RUN conda install --quiet --yes -n python2 -c menpo 'opencv=2.4.11'
RUN pip2 install moviepy
RUN conda install --quiet --yes -n python2 ffmpeg -c conda-forge
RUN conda install --quiet --yes -n python2 'xmltodict=0.11.0'
RUN conda install --quiet --yes -n python2 -c menpo 'enum=0.4.4'
RUN conda install --quiet --yes -n python2 'google-api-python-client'
RUN conda install --quiet --yes -n python2 gensim
RUN conda install --quiet --yes -n python2 'xgboost=0.6'
