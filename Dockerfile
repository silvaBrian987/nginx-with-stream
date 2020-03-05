FROM nginx:alpine

# USER root

ENV NGINX_ROOT=/etc/nginx

RUN apk add nginx-mod-stream

COPY config.sh ./

RUN chmod ug+x ./config.sh && ./config.sh

VOLUME ["${NGINX_ROOT}/conf.d", "${NGINX_ROOT}/conf.stream.d"]

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://localhost/ || exit 1