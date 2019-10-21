FROM nicklarsennz/jupyter-base:latest
USER root

RUN pip install --upgrade pip && \
    apt update && \
    apt install -y \
        python3-pil \
        python3.7-dev

USER jupyter

COPY requirements.txt .
RUN pip install --user -r requirements.txt
