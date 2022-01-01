FROM debian:bullseye-slim AS builder
RUN apt-get update && apt-get install --no-install-recommends dos2unix wget -y
WORKDIR /app
COPY src src
RUN dos2unix src/* && chmod a+x src/*.sh
RUN bash /app/src/setup.sh


FROM debian:bullseye-slim AS earnapp

LABEL maintainer="Mohamed Farhan Fazal"
LABEL org.opencontainers.image.authors="admin@ffehost.com"

ENV container=docker
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common systemd systemd-cron libatomic1 \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -f /lib/systemd/system/multi-user.target.wants/* \
    && rm -f /etc/systemd/system/*.wants/* \
    && rm -f /lib/systemd/system/local-fs.target.wants/* \
    && rm -f /lib/systemd/system/sockets.target.wants/*udev* \
    && rm -f /lib/systemd/system/sockets.target.wants/*initctl* \
    && rm -f /lib/systemd/system/basic.target.wants/* \
    && rm -f /lib/systemd/system/anaconda.target.wants/* \
    && rm -f /lib/systemd/system/plymouth* \
    && rm -f /lib/systemd/system/systemd-update-utmp* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

WORKDIR /app

COPY --from=builder /app/src /app/src
RUN cp /app/src/install.sh /usr/bin/install \
    && cp /app/src/installer.service /etc/systemd/system/installer.service \
    && systemctl enable installer.service && rm -r /app/src
COPY --from=builder /download/earnapp /download/earnapp

VOLUME [ "/etc/earnapp" ]
VOLUME ["/sys/fs/cgroup"]

CMD ["/sbin/init"]
