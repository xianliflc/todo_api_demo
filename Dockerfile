FROM python:3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
COPY demo.db /usr/src/app
RUN ln -sf /usr/bin/python3 /usr/bin/python && pip3 install --no-cache-dir -r requirements.txt
