---
comments: true
---

# Common Use

### Build Image

```bash
docker build -t image-name ./path-dockerfile
```

### Pull Image

```bash
docker pull image-name
```

### Run Container

```bash
docker run -d --name container-name -p HOST_PORT:_CONTAINER_PORT -t image-name
```

### Delete Image & Container

```bash title="Delete Container"
docker rm -f container-name|container-id
```

```bash title="Delete Image"
docker rmi image-name|image-id
```

### Reference

- [Docker Docs](https://docs.docker.com/reference/)
