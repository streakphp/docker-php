FROM circleci/php:7.1

RUN sudo apt-get update \
  && sudo apt-get install -y libpq-dev \
  && sudo docker-php-ext-install bcmath pdo_pgsql \
  && pecl install uuid \
  && sudo apt-get clean \
  && sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
