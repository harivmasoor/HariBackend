ARG EIDOLON_VERSION=latest
FROM docker.io/eidolonai/sdk:$EIDOLON_VERSION

ENV PYTHONUNBUFFERED 1
RUN export OPENAI_API_KEY=$OPENAI_API_KEY

COPY resources /usr/src/resources
COPY agent_machine /usr/src/agent_machine
WORKDIR /usr/src

CMD exec eidolon-server resources