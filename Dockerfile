FROM circleci/php:7.1

RUN sudo apt-get update \
 && sudo apt-get install -y libpq-dev uuid-dev \
 && sudo docker-php-ext-install bcmath pdo_pgsql \
 && sudo pecl install uuid \
 && sudo echo "extension=uuid.so" > /usr/local/etc/php/conf.d/uuid.ini \
 && sudo apt-get clean \
 && sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
