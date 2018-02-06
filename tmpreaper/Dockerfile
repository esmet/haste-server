FROM ubuntu:xenial
RUN apt-get update -qq && apt-get install -y tmpreaper

FROM alpine:latest
COPY --from=0 /usr/sbin/tmpreaper /bin/tmpreaper
COPY --from=0 /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libc.so.6
COPY --from=0 /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2

VOLUME /haste/data
