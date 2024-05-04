ARG java_version=17

FROM edc-alpine as base


FROM base AS branch-openjdk-8
RUN echo "this is stage that sets Java 8"
ENV JAVA_VERSION=8

FROM base AS branch-openjdk-11
RUN echo "this is stage that sets Java 11"
ENV JAVA_VERSION=11

FROM base AS branch-openjdk-17
RUN echo "this is stage that sets Java 17"
ENV JAVA_VERSION=17


FROM branch-openjdk-${java_version}
USER root
RUN echo "Installation JAVA ${JAVA_VERSION} ..."
RUN apk update --no-cache && apk add openjdk${JAVA_VERSION}

LABEL version="1.0.0"\
      description="Docker image to set environnement openJDK with the version ${JAVA_VERSION}" \
      java.version=${JAVA_VERSION}


RUN adduser -D java
WORKDIR /home/java/app
USER java