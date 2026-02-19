ARG  ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

# bash      - to allow for http-based bash one-liners
# coreutils - to allow for non-busybox version of a lot of useful utils (like sort)
# curl      - to allow for http-based bash one-liners
# openssl   - TLS/SSL CLI tools for certificate and connection debugging
# wget      - to allow for http-based bash one-liners
RUN echo -e "\033[33m***\033[0m Installing Packages for Alpine Linux $(cat /etc/alpine-release)" && \
      apk add --update \
            bash \
            coreutils \
            curl \
            openssl \
            wget \
        && rm -rf /var/cache/apk/*
