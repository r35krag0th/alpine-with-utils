#!/usr/bin/env zsh

do_build() {
  # $1 = version
  echo "";
  echo -e "\033[33m==>\033[0m Building \033[36m${1}\033[0m";
  docker build \
    --build-arg ALPINE_VERSION=$1 \
    -t ghcr.io/r35krag0th/alpine-with-utils:${1} \
    .
}


do_build 3.8
do_build 3.9
do_build 3.10
do_build 3.11
do_build 3.12
do_build 3.13
do_build 3.14
