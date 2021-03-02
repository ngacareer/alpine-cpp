# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:  https://github.com/ngacareer
# Twitter: https://twitter.com/ngacareer
# Docker:  https://hub.docker.com/ngacareer
# web   :  https://ngacareer.com

FROM  ngacareer/alpine-curl

LABEL maintainer="triuhv <ms@ngacareer.com>" \
    architecture="amd64/x86_64" \
    alpine-version="3.13" \
    build="02-Mar-2021"

RUN apk update && \
    apk upgrade && \
    apk --update add \
        dumb-init \
        gcc \
        g++ \
        build-base \
        cmake \
        bash \
        libstdc++ && \
    rm -rf /var/cache/apk/* 
    
RUN addgroup ngacareer && \
    adduser -D -G ngacareer -h /ngacareer -s /bin/sh ngacareer

USER ngacareer
WORKDIR /ngacareer

ENTRYPOINT ["/usr/bin/dumb-init", "entrypoint.sh", "build.sh"]    
