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