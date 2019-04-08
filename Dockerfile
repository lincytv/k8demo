ARG url=http://mirrors.estointernet.in/apache/kafka/2.2.0/kafka_2.12-2.2.0.tgz
FROM alpine
CMD apk update && apk add tar curl exiftool openjdk8
WORKDIR /scr
ADD  $url /scr
RUN tar -xvzf kafka_2.12-2.2.0.tgz && cd kafka_2.12-2.2.0
