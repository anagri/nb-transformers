FROM paperspace/nb-transformers:4.17.0

RUN python3 -m pip install --no-cache-dir pytorch-lightning==1.5.7
