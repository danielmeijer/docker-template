# docker-template

[![nginx](https://img.shields.io/badge/nginx-latest-brightgreen.svg)]()
[![mysql](https://img.shields.io/badge/mysql-5.7-brightgreen.svg)]()
[![php5.6](https://img.shields.io/badge/php-5.6-brightgreen.svg)]()
[![php7.0](https://img.shields.io/badge/php-7.0-brightgreen.svg)]()
[![php7.1](https://img.shields.io/badge/php-7.1-brightgreen.svg)]()

## Installation

1. Copy `.env.dist` to `.env`:

    ```bash
    cp .env.dist .env
    ```

2. Change your parameters from .env file.

3. Start the container.

    ```bash
    docker-compose up -d
    ```

4. Access your application via [http://localhost/](http://localhost/).

## Documentation

- [Docker Useful docker commands](./docs/DOCKER.md)
- [PHP](./docs/PHP.md)
  - [PHPMyAdmin](./docs/PHPMYADMIN.md)
  - [Composer basic usage](./docs/Composer-basic-usage)
- [Symfony Docs](./docs/SYMFONY.md)
- [SSL](./docs/SSL.md)
- [Environment variables](./docs/ENV_VAR.md)
- [Cleaning](./docs/CLEANING.md)
