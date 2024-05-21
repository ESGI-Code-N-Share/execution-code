FROM codenshareregistry/edc-alpine as base

USER root
RUN echo "Installation Node ..."
RUN apk update --no-cache && apk add nodejs npm

LABEL version="1.0.0"\
      description="Docker image to set environnement node with the current version"

WORKDIR /home/executor/app
USER executor

ENTRYPOINT ["node", "App.js"]