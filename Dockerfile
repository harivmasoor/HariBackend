ARG EIDOLON_VERSION=latest
FROM docker.io/eidolonai/sdk:$EIDOLON_VERSION
ENV PYTHONUNBUFFERED 1

ADD odbcinst.ini /etc/odbcinst.ini
RUN apt-get update
RUN apt-get install -y tdsodbc unixodbc-dev
# RUN apt install unixodbc-bin -y
RUN apt-get clean -y

COPY resources /resources
COPY agent_machine /agent_machine
COPY requirements.txt /requirements.txt
WORKDIR /
RUN pip install -r /requirements.txt
ENV PYTHONPATH="${PYTHONPATH}:agent_machine"

CMD exec eidolon-server resources