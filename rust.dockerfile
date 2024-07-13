FROM codenshareregistry/edc-alpine as base

USER root

RUN echo "Installation Rust ..."
RUN apk add --no-cache rust cargo

RUN mkdir -p /home/executor/app
RUN chmod -R 777 /home/executor/app

LABEL version="1.0.0"\
      description="Docker image to set environnement rustup with the latest version" \
      extension="rs"

WORKDIR /home/executor/app
USER executor

ENTRYPOINT ["sh", "-c", "rustc App.rs && ./App"]