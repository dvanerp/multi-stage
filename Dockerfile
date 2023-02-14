FROM php:8.1-alpine as one

COPY . /usr/src/multistageapp

WORKDIR /usr/src/multistageapp

CMD ["echo", "Hello World!"]
CMD ["php", "./index.php"]

########################################################################################################################
FROM php:8.1-alpine as two

CMD ["echo", "Hello World (second)!"]