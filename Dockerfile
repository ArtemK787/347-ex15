FROM php:8.2-apache

LABEL version="2.0-countries"
LABEL description="Application PHP affichant les vainqueurs de la Coupe du Monde avec filtre par année et par équipe"
LABEL maintainer="Artem Kliuchko"

# test push
WORKDIR /var/www/html

COPY src/index.php /var/www/html/index.php

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80