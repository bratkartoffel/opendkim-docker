FROM alpine:3.18

# install packages
RUN apk upgrade --no-cache \
        && apk add --no-cache \
        opendkim opendkim-utils \
        s6 setpriv

# add the custom configurations
COPY rootfs/ /

# default opendkim port
EXPOSE 8891/tcp

CMD [ "/entrypoint.sh" ]

