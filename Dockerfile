FROM alpine:3.8

RUN apk add --update \
            bash \
            curl \
            wget \
        && rm -rf /var/cache/apk/*
