FROM paperspace/nb-transformers:4.17.0
RUN apt-get install -y vim locales locales-all tree
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV HF_HOME '/storage/huggingface'
RUN jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user
RUN jupyter nbextension enable jupyter-black-master/jupyter-black
RUN python3 -m pip install --no-cache-dir pytorch-lightning==1.5.7 pdfminer.six==20220319 pandas==1.1.5 black==22.3.0 nltk==3.6.7 \
  scikit-learn==0.24.2 sentencepiece==0.1.96 matplotlib==3.3.4 onnxruntime==1.10.0 spacy==3.2.1 torchtext==0.11.2 datasets==1.18.4 \
  umap-learn==0.5.1 bertviz==1.4.0 seqeval==1.2.2 sacrebleu==1.5.1 rouge-score==0.0.4 py7zr==0.17.4 nlpaug==1.1.7 scikit-multilearn==0.2.0 psutil==5.9.0 accelerate==0.5.1
# RUN python3 -m pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.2.0/en_core_web_sm-3.2.0-py3-none-any.whl \
#   https://github.com/explosion/spacy-models/releases/download/de_core_news_sm-3.2.0/de_core_news_sm-3.2.0-py3-none-any.whl
