FROM paperspace/nb-transformers:4.17.0
RUN apt-get install -y vim
RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user
RUN jupyter nbextension enable jupyter-black-master/jupyter-black
RUN python3 -m pip install --no-cache-dir pytorch-lightning==1.5.7 pdfminer.six==20220319 pandas==1.1.5 black==22.3.0
