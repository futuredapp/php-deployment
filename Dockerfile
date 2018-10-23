FROM circleci/php:7.1

USER root

RUN apt-get -y -qq update && \
	apt-get install -y -qq curl ansible libpng-dev lftp && \
	apt-get clean

RUN docker-php-ext-install gd zip

RUN curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && chmod +x /usr/local/bin/jq 

