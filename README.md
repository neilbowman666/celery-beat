# Celery Heartbeat Module

## DataSource Dependencies

1. MySQL 5.7 +
2. Redis (for Queuing Messages)

## System Dependencies

1. Ubuntu 18.04 LTS
    * build-essential
    * libmysqlclient-dev
    
## Environment Variables

```bash
MYSQL_NAME=wbw
MYSQL_USER=root
MYSQL_PASS=12345678
MYSQL_HOST=localhost
MYSQL_PORT=3306

BROKER_URL=redis://192.168.80.129:6379/8
```
