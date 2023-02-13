FROM php:8.1-alpine as one

CMD ["echo", "Hello World!"]

########################################################################################################################
FROM php:8.1-alpine as two

CMD ["echo", "Hello World (second)!"]