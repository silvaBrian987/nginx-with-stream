# Aca se agregan componentes
apk add busybox-extras

sed -i "\$ainclude /etc/nginx/stream.conf;" $NGINX_ROOT/nginx.conf

mkdir -p $NGINX_ROOT/conf.stream.d/

cat <<EOF > $NGINX_ROOT/stream.conf
stream {
    include /etc/nginx/conf.stream.d/*.conf;
}
EOF