FROM jrei/systemd-ubuntu
LABEL org.opencontainers.image.authors="admin@ffehost.com"

VOLUME [ "/etc/earnapp" ]

WORKDIR /app
COPY src src
RUN cp /app/src/install.sh /usr/bin/install && chmod a+x /usr/bin/install && \
cp /app/src/myip.sh /usr/bin/myip && chmod a+x /usr/bin/myip

RUN cp /app/src/installer.service /etc/systemd/system/installer.service && \
systemctl enable installer.service

RUN bash /app/src/setup.sh && rm -r /app/src

CMD [ "/lib/systemd/systemd" ]