FROM whiteplus/php:5.6

VOLUME [ "/usr/src/app" ]

WORKDIR /tmp

RUN apt-get update -y \
 && apt-get install -y git unzip \
 && curl -sS https://getcomposer.org/installer | php \
 && mv composer.phar /usr/local/bin/composer \
 && composer self-update \
 && composer global require hirak/prestissimo

WORKDIR /usr/src/app

