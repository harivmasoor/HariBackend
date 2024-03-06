ARG EIDOLON_VERSION=latest
FROM docker.io/eidolonai/sdk:$EIDOLON_VERSION
ENV PYTHONUNBUFFERED 1

COPY resources /resources
COPY agent_machine /agent_machine
COPY requirements.txt /requirements.txt
WORKDIR /
RUN pip install -r /requirements.txt
ENV PYTHONPATH="${PYTHONPATH}:agent_machine"

CMD exec eidolon-server resources