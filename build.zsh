#!/usr/bin/env zsh

docker build -t ghcr.io/r35krag0th/alpine-with-utils:${1:-3.8} .
