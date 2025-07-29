FROM php:8.3-cli
COPY . /app
WORKDIR /app
COPY --from=composer /usr/bin/composer /usr/bin/composer