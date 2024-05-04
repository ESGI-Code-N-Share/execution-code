FROM alpine:latest
RUN apk update --no-cache
RUN adduser -D alpine
USER alpine
WORKDIR /home/alpine