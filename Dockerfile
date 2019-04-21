FROM alpine:latest
MAINTAINER Sergi Castro <sergikstro@gmail.com>

RUN mkdir /usr/local/src
RUN wget https://www.noip.com/client/linux/noip-duc-linux.tar.gz -O /usr/local/src/noip-duc-linux.tar.gz
WORKDIR /usr/local/src
RUN tar xzf noip-duc-linux.tar.gz
WORKDIR noip-2.1.9-1

RUN apk add make gcc libc-dev expect
RUN apk update

# sources
ADD configure.sh /
ADD entrypoint.sh /

VOLUME /config

RUN make
RUN /configure.sh default default

ENTRYPOINT ["/entrypoint.sh"]
