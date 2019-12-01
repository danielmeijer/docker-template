# PHP

<a name="Choose-a-different-version-of-php"></a>
### Choose a different version of php

To be able to change the version for php, you'll need to change it in the .env file and reexecute docker-compose build.

Right now docker-template only supports certain versions, you can see it in ./services/php/ folder.

## Composer basic usage

Place the `composer.json` file that describes the dependencies of your project inside the `app` folder, then install the defined dependencies through the `php` container:

```bash
$ docker-compose run --rm php composer install
```