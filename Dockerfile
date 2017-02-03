FROM armhf/alpine:3.4
RUN apk add --no-cache curl
RUN curl https://bin.equinox.io/c/3u8U4iwUn6o/cardigann-stable-linux-arm.tgz | \
  tar -xzC /
EXPOSE 5060
ENV CONFIG_DIR=/.config/cardigann
VOLUME [ "/.config/cardigann" ]
ENTRYPOINT [ "/cardigann" ]
CMD [ "server" ]
