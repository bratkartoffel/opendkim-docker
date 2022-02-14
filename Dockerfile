FROM alpine:3.15

# install packages
RUN apk upgrade --no-cache \
        && apk add --no-cache \
        opendkim opendkim-utils \
        s6 setpriv

# add the custom configurations
COPY rootfs/ /

CMD [ "/entrypoint.sh" ]

