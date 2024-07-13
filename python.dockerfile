ARG python_version=3

FROM codenshareregistry/edc-alpine as base

FROM base AS branch-python-3
RUN echo "this is stage that sets Python 3"
ENV PYTHON_VERSION=3


FROM branch-python-${python_version}
USER root
RUN echo "Installation PYTHON ${PYTHON_VERSION} ..."
RUN apk update --no-cache && apk add python${PYTHON_VERSION}

LABEL version="1.0.0"\
      description="Docker image to set environnement openJDK with the version ${PYTHON_VERSION}" \
      python.version=${PYTHON_VERSION} \
      extension="py"


WORKDIR /home/executor/app
USER executor

ENTRYPOINT ["python", "App.py"]