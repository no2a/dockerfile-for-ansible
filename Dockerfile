FROM python:3.9-slim
 #ubuntu:focal
COPY requirements.txt /requirements.txt
# git is for ansible-lint
RUN \
  apt-get update \
  && apt-get install -y \
    git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 --no-cache-dir install -r /requirements.txt
ENTRYPOINT bash
