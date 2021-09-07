FROM ubuntu

USER root

RUN apt update -y &&  DEBIAN_FRONTEND=noninteractive apt install -y apache2

RUN apt install php -y

RUN apt install -y php-iconv php-mbstring php-curl php-tokenizer php-xmlrpc php-soap php-ctype php-zip php-gd php-simplexml php-dom php-xml php-intl php-json

RUN apt install wget -y && wget https://download.moodle.org/stable38/moodle-3.8.9.tgz

RUN tar -xvf moodle-3.8.9.tgz && mv -f moodle /var/www/html/ && chmod -R 777 /var/www/html

CMD apachectl -D FOREGROUND
