FROM nicklarsennz/jupyter-base:latest
USER root

ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

RUN pip install --upgrade pip && \
    apt update && \
    apt install -y \
        python3-pil \
        python3.7-dev \
        software-properties-common

# RUN add-apt-repository ppa:ubuntugis/ppa && \
#     apt update && \
#     apt install -y gdal-bin libgdal-dev
#RUN pip install --global-option=build_ext --global-option="-I/usr/include/gdal" gdal==2.4.0

RUN apt install -y python3-gdal

USER jupyter

COPY requirements.txt .
RUN pip install --user -r requirements.txt
