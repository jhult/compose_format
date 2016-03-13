FROM python
MAINTAINER think@hotmail.de

RUN pip install pyaml

COPY bin /bin
COPY compose_format /usr/local/lib/python3.5/site-packages/compose_format
COPY ["features/*.feature", "Dockerfile", "README.md", "/"]

RUN chmod +x /bin/compose_format

ENTRYPOINT python3 /bin/compose_format
