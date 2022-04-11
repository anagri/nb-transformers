FROM paperspace/nb-transformers:4.17.0
RUN apt-get install -y vim locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user
RUN jupyter nbextension enable jupyter-black-master/jupyter-black
RUN python3 -m pip install --no-cache-dir pytorch-lightning==1.5.7 pdfminer.six==20220319 pandas==1.1.5 black==22.3.0 nltk==3.6.7 scikit-learn==0.24.2 sentencepiece==0.1.96 matplotlib==3.3.4 onnxruntime==1.10.0 spacy==3.2.1 torchtext==0.11.2
