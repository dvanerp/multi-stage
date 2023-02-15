FROM php:8.1-alpine as one

ARG APP_CUSTOM_GITHUB_VAR
ARG APP_CUSTOM_GITHUB_SECRET

ENV APP_DEBUG=false
ENV APP_CUSTOM_GITHUB_VAR=$APP_CUSTOM_GITHUB_VAR
ENV APP_CUSTOM_GITHUB_SECRET=$APP_CUSTOM_GITHUB_SECRET

COPY . /usr/src/multistageapp

WORKDIR /usr/src/multistageapp

RUN apk add composer
RUN composer install

CMD ["echo", "Hello World!"]
CMD ["php", "./index.php"]

########################################################################################################################
FROM php:8.1-alpine as two

CMD ["echo", "Hello World (second)!"]