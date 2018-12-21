FROM circleci/php:7.1

USER root

RUN apt-get -y -qq update && \
	apt-get install -y -qq curl ansible libpng-dev lftp jq unzip && \
	apt-get clean

RUN wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
RUN unzip terraform_0.11.11_linux_amd64.zip
RUN sudo mv terraform /usr/local/bin/

RUN docker-php-ext-install gd zip

