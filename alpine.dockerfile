FROM alpine:latest
RUN apk update --no-cache
RUN adduser -D executor
USER executor