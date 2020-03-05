mkdir -p /etc/nginx/conf.d/streams/
sed -i "\$ainclude /etc/nginx/conf.d/streams/*.conf" /etc/nginx/nginx.conf