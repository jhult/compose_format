FROM python
MAINTAINER think@hotmail.de

RUN pip install pyaml

ADD bin /bin
COPY compose_format /usr/local/lib/python3.5/site-packages/compose_format
ADD features /
ADD Dockerfile /
ADD README.md /

RUN chmod +x /bin/compose_format

ENTRYPOINT python3 /bin/compose_format
