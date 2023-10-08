# gobel-example
Gobel is a headless cms built with golang.

This repository contains the code to run gobel in each environment.

Both local environment and production environment are assumed to be operated with docker-compose.

- [bmf-tech-client](https://github.com/bmf-san/bmf-tech-client)
- [gobel-api](https://github.com/bmf-san/gobel-api)
- [gobel-client-example](https://github.com/bmf-san/gobel-client-example)
- [gobel-admin-client-example](https://github.com/bmf-san/gobel-admin-client-example)
- [gobel-example](https://github.com/bmf-san/gobel-example)
- [gobel-ops-example](https://github.com/bmf-san/gobel-ops-example)
- [migrate-rubel-to-gobel](https://github.com/bmf-san/migrate-rubel-to-gobel)

# Get started
## Create a .env
```sh
cp .env.example .env
```

## Edit a a host
```
ex.
127.0.0.1 SERVER_NAME_OF_API          # use GOBEL_NGINX_API_SERVER_NAME in .env
127.0.0.1 SERVER_NAME_OF_CLIENT       # use GOBEL_NGINX_CLIENT_SERVER_NAME in .env
127.0.0.1 SERVER_NAME_OF_ADMIN_CLIENT # use GOBEL_NGINX_ADMIN_CLIENT_SERVER_NAME .env
```

## Create certifications
Place certificates created with mkcert in `/nginx/certificates/`.

## Init data
Use a [faker.sql](https://github.com/bmf-san/gobel-api/blob/master/doc/faker.sql).

## Faker
[Here](https://github.com/bmf-san/gobel-api/blob/master/doc/faker.sql) is a fake data sql file that can be used for operation verification.

## Build
```sh
make docker-compose-build
```

## Run
```sh
make docker-compose-up
```

# Applications
|            Application             |                 URL                  |
| ---------------------------------- | ------------------------------------ |
| gobel-api                          | https://SERVER_NAME_OF_API/           |
| gobel-admin-client-example-example | https://SERVER_NAME_OF_ADMIN_CLIENT/ |
| gobel-client                       | https://SERVER_NAME_OF_CLIENT/       |
| loki                               | http://localhost:3100/               |
| promtail                           | http://localhost:9080/               |
| grafana                            | http://localhost:3000/               |
| redis-insight                      | http://localhost:8001/               |
| cadvisor                           | http://localhost:8090/               |
| prometheus                         | http://localhost:9090/graph          |
| node-exporter                      | http://localhost:9100/               |
| mysqld-exporter                    | http://localhost:9104/               |
| nginx-prometheus-exporter          | http://localhost:9113/               |
| redis-exporter                     | http://localhost:9121/               |
| blackbox-exporter                  | http://localhost:9115/               |
| ssl-exporter                       | http://localhost:9219/               |
| pyroscope                          | http://localhost:4040/               |

# Alert
Available by setting grafana alert.

# Notification
Notifications are set manually in Alerting>Contact Points in Grafana.

# System metrics
Use grafana's dashboard and datasources.
You can provision by managing files in yml or json format.

# License
This project is licensed under the terms of the MIT license.

# Author
bmf - Software engineer.

- [github - bmf-san/bmf-san](https://github.com/bmf-san/bmf-san)
- [twitter - @bmf-san](https://twitter.com/bmf_san)
- [blog - bmf-tech](http://bmf-tech.com/)
