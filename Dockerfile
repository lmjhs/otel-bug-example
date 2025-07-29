FROM php:8.3-cli
COPY . /app
WORKDIR /app
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get install -y zip git