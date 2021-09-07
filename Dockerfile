FROM ubuntu

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y  update

RUN apt-get -y install apache2

EXPOSE 80

CMD apachectl -D FOREGROUND
