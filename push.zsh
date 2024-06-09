#!/usr/bin/env zsh

do_push() {
  # $1 = version
  echo "";
  echo -e "\033[33m==>\033[0m Pushing \033[36m${1}\033[0m";
  docker push ghcr.io/r35krag0th/alpine-with-utils:${1};
}


do_push "3.8"
do_push "3.9"
do_push "3.10"
do_push "3.11"
do_push "3.12"
do_push "3.13"
do_push "3.14"
do_push "3.15"
do_push "3.16"
do_push "3.17"
do_push "3.18"
do_push "3.19"
do_push "3.20"
