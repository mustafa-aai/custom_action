FROM ubuntu:latest

RUN  apt-get update && \
  apt-get install  elinks --assume-yes
#chmod +x /usr/local/bin/mybash

ADD mybash.sh /usr/local/bin

ENTRYPOINT [ "mybash.sh" ]
