FROM jrei/systemd-ubuntu
LABEL org.opencontainers.image.authors="admin@ffehost.com"

VOLUME [ "/etc/earnapp" ]

WORKDIR /app
COPY src src
RUN cp /app/src/install.sh /app/install && chmod a+x /app/install && \
cp /app/src/myip.sh /usr/bin/myip && chmod a+x /usr/bin/myip

RUN bash /app/src/setup.sh && rm -r /app/src

CMD [ "/lib/systemd/systemd" ]