FROM python:3.13.0a4-alpine3.19

WORKDIR /app

RUN pip install --upgrade pip
RUN apt update && apt install gcc -y

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "mkdocs", "serve" ]