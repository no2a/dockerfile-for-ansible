FROM ubuntu:xenial
RUN \
  apt-get update && \
  apt-get install -y python-pip libssl-dev && \
  pip install ansible==2.3.0.0 ansible-lint==3.4.13
