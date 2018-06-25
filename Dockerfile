FROM circleci/php:7.1

USER root

RUN apt-get update && apt-get install -y ansible libpng-dev lftp

RUN docker-php-ext-install gd zip 
