FROM ubuntu:20.04

LABEL maintainer="Mohamed Farhan Fazal"
LABEL org.opencontainers.image.authors="admin@ffehost.com"

ENV container=docker
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y wget dos2unix iputils-ping net-tools htop libatomic1 \
    && apt-get clean

WORKDIR /app

COPY src src
RUN dos2unix src/* \
    && cp /app/src/install.sh /usr/bin/install \
    && cp /app/src/myip.sh /usr/bin/myip \
    && chmod a+x /usr/bin/install /usr/bin/myip

RUN bash /app/src/setup.sh && rm -r /app/src

VOLUME [ "/etc/earnapp" ]

CMD ["install"]