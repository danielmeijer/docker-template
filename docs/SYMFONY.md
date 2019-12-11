# Create a new Symfony project (legacy docs)

You can use Composer to ease the creation of a new symfony project:

```bash
$ rm -rf app/* && docker-compose run --rm -u $(id -u):$(id -g) php composer create-project symfony/framework-standard-edition .
```

As from [Symfony3.2](https://github.com/symfony/symfony/pull/19681) you can use the environment variables into you service container configuration, using the `%env(MYSQL_DATABASE)%` notation:

![Symfony config](https://cloud.githubusercontent.com/assets/21344385/21572074/ab2de672-ced5-11e6-83be-c4eb7274a900.png)

Composer will create a new [Symfony Standard Edition](https://github.com/symfony/symfony-standard) application under the `app/` directory.

A minimum configuration file to get your application running under Nginx is already provided from `docker-template`.
Remove the `default.conf` file and rename `symfony.conf.example` into `symfony.conf`:

```bash
$ rm sites/default.conf
$ mv sites/symfony.conf.example sites/symfony.conf
```

Now remove the access check from `app/web/app_dev.php`:

```php
// This check prevents access to debug front controllers that are deployed by accident to production servers.
// Feel free to remove this, extend it, or make something more sophisticated.
if (isset($_SERVER['HTTP_CLIENT_IP'])
    || isset($_SERVER['HTTP_X_FORWARDED_FOR'])
    || !(in_array(@$_SERVER['REMOTE_ADDR'], ['127.0.0.1', '::1']) || php_sapi_name() === 'cli-server')
) {
    header('HTTP/1.0 403 Forbidden');
    exit('You are not allowed to access this file. Check '.basename(__FILE__).' for more information.');
}
```

> **Warning**: After you deploy to production, make sure that you cannot access the `app_dev.php`

You can start the containers now:

```bash
$ docker-compose up -d
```

<a name="Symfony-console"></a>
#### Symfony console

How can I use Symfony's console?

 - For Symfony 3:

    ```bash
    $ docker-compose run --rm php php bin/console
    ```

 - For Symfony 2:

    ```bash
    $ docker-compose run --rm php php app/console
    ```