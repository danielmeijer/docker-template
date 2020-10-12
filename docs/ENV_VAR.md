# Environment Variable (.env file)

## NGINX

You can define more environment variables here: <https://hub.docker.com/_/nginx>
|  ENVIRONMENT NAME |  DESCRIPTION  | DEFAULT VALUE  |
|---                |---            |---             |
|TARGET             | Define target to deploy nginx. If you choose for example local, you'll use .conf adapted for local environment  | local  |
|NGINX_PORT         | Default nginx port  | 80  |
|NGINX_SSL_PORT     | Port to expose nginx. Note: if your nginx is not listening at 443 inside container, this won't work.  | 443  |
|SSL                | Change configuration to catch SSL or not SSL  | ssl  |

## PHP

|  ENVIRONMENT NAME |  DESCRIPTION  | DEFAULT VALUE  |
|---                |---            |---             |
|PHP_VERSION        | Change PHP Version  | 7.1      |
|MY_IP_FOR_XDEBUG   | Setup broadcast IP to enable XDebug for PHP  | 192.168.1.255  |

## MYSQL VARIABLES

You can define more environment variables here: <https://hub.docker.com/_/mysql>

|  ENVIRONMENT NAME |  DESCRIPTION  | DEFAULT VALUE  |
|---                |---            |             ---|
|MYSQL_ROOT_PASSWORD| Your root password for mysql  | root-password (<--CHANGE IT!!!!)  |
|MYSQL_DATABASE     | Create DB with variable value  | ./app  |
|MYSQL_VERSION      | Defines version for MySQL, this depends on what is tagged in DockerHub  | 5.7  |
|MYSQL_USER         | Defines path for your PHP Project  | docker  |
|MYSQL_PASSWORD     | Password for MYSQL_USER  | docker  |

## MISC

|  ENVIRONMENT NAME |  DESCRIPTION  | DEFAULT VALUE  |
|---                |---            |---             |
| APP_PATH          | Defines the path where your project files will be placed. If set ./NAME it will be in </path/to/docker-template/$APP_PATH>   | ./app  |
| PHPMYADMIN_PORT   | Defines phpmyadmin port  | 8080  |
