### Overview

Dockerfile is a text file that contains a set of instructions used to build a Docker image.

The Dockerfile specifies the steps needed to create a Docker image by defining the environment and configuration for the application or service it will contain. These instructions typically include:

- Base Image: Specifies the base image to use for the container. This is typically an existing image from a registry like Docker Hub that provides a minimal operating system and runtime environment.

- Environment Configuration: Sets environment variables required by the application or service.

- Dependencies Installation: Installs any necessary packages, libraries, or tools needed by the application.

- Application Setup: Copies application code and configuration files into the image and configures the container environment.

- Expose Ports: Specifies which network ports the container will listen on at runtime.

- Container Execution Command: Defines the command or entry point to execute when the container starts.

### Instruction

#### FROM

> Initialize a new build stage from a base image

```dockerfile hl_lines="1" title="FROM"
FROM nginx:alpine3.18-slim
```

#### RUN

> Execute any commands to create a new layer on top of the current image, execute when build stage.

```dockerfile hl_lines="3 4" title="RUN"
FROM nginx:alpine3.18-slim

RUN mkdir hello
RUN echo "HELLO WORLD" > "hello/world.txt"
```

#### CMD

> Sets the command to be executed when running a container from an image.<br/>
> Format: <br/>
> CMD ["executable","param1","param2"] (exec form)<br/>
> CMD ["param1","param2"] (exec form, as default parameters to ENTRYPOINT)<br/>
> CMD command param1 param2 (shell form)

```dockerfile hl_lines="6" title="CMD"
FROM nginx:alpine3.18-slim

RUN mkdir hello
RUN echo "HELLO WORLD" > "hello/world.txt"

CMD cat "hello/world.txt"
```

#### LABEL

> Add metadata to an image.

```dockerfile hl_lines="3" title="LABEL"
FROM nginx:alpine3.18-slim

LABEL author="Solehudin"
```

#### ADD

> Copy new files, directories or remote file URLs from <src> and adds them to the filesystem of the image at the path <dest>.

`Format: `
`ADD [OPTIONS] <src> ... <dest> | ADD [OPTIONS] ["<src>", ... "<dest>"]`

```dockerfile hl_lines="4" title="ADD"
FROM nginx:alpine3.18-slim

RUN mkdir hello
ADD text/*.txt hello
```

#### COPY

> Copy new files or directories from <src> and adds them to the filesystem of the container at the path <dest>.

`Format: `
`COPY [OPTIONS] <src> ... <dest> | COPY [OPTIONS] ["<src>", ... "<dest>"]`

```dockerfile hl_lines="4" title="COPY"
FROM nginx:alpine3.18-slim

RUN mkdir hello
COPY text/*.txt hello
```

#### EXPOSE

> Inform Docker that the container listens on the specified network ports at runtime. You can specify whether the port listens on TCP or UDP, and the default is TCP if you don't specify a protocol.

```dockerfile hl_lines="5 6 8" title="EXPOSE"
FROM nginx:alpine3.18-slim

COPY *.html /usr/share/nginx/html

EXPOSE 80/TCP
EXPOSE 8181/UDP
# or
# EXPOSE 80
```

#### ENV

> Set the environment variable <key> to the value <value>. This value will be in the environment for all subsequent instructions in the build stage and can be replaced inline in many as well. Evv is usually for **coontainer needs**.

```dockerfile hl_lines="3" title="ENV"
FROM nginx:alpine3.18-slim

ENV SAY_KEY=HELLO

COPY *.html /usr/share/nginx/html

RUN echo "<h1>${SAY_KEY}</h1>" > "/usr/share/nginx/html/index.html"

EXPOSE 80
```

#### ARG

> Define a variable that users can pass at build-time. Arg is usually only for **image needs**.

```dockerfile hl_lines="3" title="ARG"
FROM nginx:alpine3.18-slim

ARG SAY_KEY=HELLO
```

#### WORKDIR

> Set the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.

```dockerfile hl_lines="3" title="WORKDIR"
FROM nginx:alpine3.18-slim

WORKDIR /app

# hello.txt inside path /app
RUN echo "HELLO WORLD" > hello.txt

EXPOSE 80
```

#### ENTRYPOINT

> Allows us to configure a container that will run as an executable. In practice, CMD & ENTRYPOINT are usually used together, **ENTRYPOINT is used as the default command and CMD is used as an argument to the command in ENTRYPOINT**.

```dockerfile hl_lines="3" title="ENTRYPOINT"
FROM nginx:alpine3.18-slim

ENTRYPOINT [ "/bin/echo" ,"Hello, I'm from dockerfile"]

# ENTRYPOINT & CMD
# ENTRYPOINT [ "/bin/echo" ]
# CMD [ "Hello, I'm from dockerfile" ]
```

### Multi-stage Build

There are two main reasons for why we want to use multi-stage builds:

- They allow us to run build steps in parallel, making our build pipeline faster and more efficient.
- They allow us to create a final image with a smaller footprint, containing only what's needed to run our program.

```dockerfile title="Example"
FROM golang:1.18-alpine as builder

WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o go-hello-world .

#------------------

# scratch can be said to be a blank image
# You can also use the existing image
FROM scratch

WORKDIR /app
COPY --from=builder /app/go-hello-world .

EXPOSE 8080

ENTRYPOINT [ "./go-hello-world" ]
```

```dockerfile title="Example"
FROM python:3.13.0a4-alpine3.19 as builder

WORKDIR /app

RUN apk update && apk add build-base
RUN pip install --upgrade pip

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .
RUN mkdocs build


FROM nginx:alpine3.18-slim

WORKDIR /app
COPY --from=builder /app/site/ /usr/share/nginx/html/

EXPOSE 80
```

### Reference

- [Instruction](https://docs.docker.com/reference/dockerfile/)

- [Multi-stage build](https://docs.docker.com/build/guide/multi-stage/)
