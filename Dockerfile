FROM nginx:alpine

# USER root

RUN apk add nginx-mod-stream

COPY config.sh ./config.sh

RUN config.sh