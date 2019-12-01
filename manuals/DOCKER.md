# Docker

<a name="Useful-docker-commands"></a>
### Useful docker commands

#### Start containers

```bash
docker-compose up -d
```

#### Restart services

```bash
docker-compose restart
```

#### List containers

```bash
docker-compose ps
```

#### Start a terminal session for <container_name> (i.e: php)

```bash
docker-compose exec <container_name> /bin/bash
```

#### View Logs

```bash
docker-compose logs
```

#### List/remove network

```bash
docker network [ ls | rm <network_name> ]
```

#### List/remove volumes

```bash
docker volume [ ls | rm <volume_name> ]
```

#### Stop containers

```bash
docker-compose stop
```

#### Stop and remove containers. Any data which is not in a volume will be lost.

```bash
docker-compose down
```
