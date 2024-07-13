FROM codenshareregistry/edc-alpine as base

USER root
RUN echo "Installation Ruby ..."
RUN apk update --no-cache && apk add ruby

LABEL version="1.0.0"\
      description="Docker image to set environnement ruby with the current version" \
      ruby.version="latest" \
      extension="rb"

WORKDIR /home/executor/app
USER executor

ENTRYPOINT ["ruby", "App.rb"]