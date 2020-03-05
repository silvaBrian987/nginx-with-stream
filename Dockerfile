FROM nginx:alpine

# USER root

RUN apk add nginx-mod-stream

COPY . .

RUN config.sh