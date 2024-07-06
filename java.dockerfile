ARG java_version=17

FROM codenshareregistry/edc-alpine as base


FROM base AS branch-openjdk-11
RUN echo "this is stage that sets Java 11"
ENV JAVA_VERSION=11

FROM base AS branch-openjdk-17
RUN echo "this is stage that sets Java 17"
ENV JAVA_VERSION=17

FROM base AS branch-openjdk-21
RUN echo "this is stage that sets Java 21"
ENV JAVA_VERSION=21

FROM base AS branch-openjdk-latest
RUN echo "this is stage that sets Java 21"
ENV JAVA_VERSION=21


FROM branch-openjdk-${java_version}
USER root
RUN echo "Installation JAVA ${JAVA_VERSION} ..."
RUN apk update --no-cache && apk add openjdk${JAVA_VERSION}

LABEL version="1.0.0"\
      description="Docker image to set environnement openJDK with the version ${JAVA_VERSION}" \
      java.version=${JAVA_VERSION}


WORKDIR /home/executor/app
USER executor

ENTRYPOINT ["java", "App.java"]