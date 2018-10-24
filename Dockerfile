FROM circleci/php:7.1

USER root

RUN apt-get -y -qq update && \
	apt-get install -y -qq curl ansible libpng-dev lftp jq && \
	apt-get clean

RUN docker-php-ext-install gd zip

