FROM --platform=linux/amd64 squidfunk/mkdocs-material:latest as builder

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

CMD ["build"]


FROM nginx:alpine3.18-slim


COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /app/site /usr/share/nginx/html/

EXPOSE 80