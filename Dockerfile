FROM alpine:3.8

# bash      - to allow for http-based bash one-liners
# coreutils - to allow for non-busybox version of a lot of useful utils (like sort)
# curl      - to allow for http-based bash one-liners
# wget      - to allow for http-based bash one-liners
RUN apk add --update \
            bash \
            coreutils \
            curl \
            wget \
        && rm -rf /var/cache/apk/*
