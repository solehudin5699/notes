---
comments: true
---

## Overview

---

Docker Compose is a tool for defining and running multi-container applications. It simplifies the control of our entire application stack, making it easy to manage services, networks, and volumes in a single, comprehensible YAML configuration file.

## Compose File

---

Docker Compose relies on a YAML configuration file, usually named:

- `compose.yaml` (preferred)
- `compose.yml`
- `docker-compose.yaml`
- `docker-compose.yaml`

### Compose Specification

---

```yaml title="compose.yaml (example)"
version: 3.8 # (1)!

name: myapp # (2)!

services: # (3)!
  fe:
    container_name: fe # (4)!
    build: . # (5)!

  be:
    container_name: be
    image: imagename:tag # (6)!

networks: # (7)!
  my-network:

volumes: # (8)!
  my-volume:

configs: # (9)!
  http_config:
    external: true

secrets: # (10)!
  server-certificate:
    file: ./server.cert
```

1. **version**: defined by the Compose Specification for backward compatibility. It is only informative & optional.
2. **name**: name of project, as prefix for every services.
3. **services**: define services. In the example, there 2 services, "fe" and "be".
4. **container_name**: container name of service
5. **build**: path of dockerfile for build image
6. **image**: If not use buid (path of dockerfile), we can also provide base image, image is define base image that used for the service
7. **networks**: define custom network
8. **volumes**: define custom volume
9. **configs**: define config needed
10. **secrets**: define secrets needed

## Rerefence

---

- [Docker Compose](https://docs.docker.com/compose/)
