FROM php:8.1-alpine as one

ARG var_APP_CUSTOM_GITHUB_VAR

ENV APP_DEBUG=false
ENV APP_CUSTOM_GITHUB_VAR=$var_APP_CUSTOM_GITHUB_VAR

COPY . /usr/src/multistageapp

WORKDIR /usr/src/multistageapp

RUN apk add composer
RUN composer install

CMD ["echo", "Hello World!"]
CMD ["php", "./index.php"]

########################################################################################################################
FROM php:8.1-alpine as two

CMD ["echo", "Hello World (second)!"]