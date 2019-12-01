FROM nginx

# Remove default nginx configs
RUN rm -f /etc/nginx/conf.d/*

# Self-signed cert

RUN apt-get update && apt-get install openssl
RUN mkdir /var/selfcerts
RUN openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 \
    -subj "/C=ES/ST=Madrid/L=Madrid/O=docker-template/CN=nginx.local" \
    -keyout /var/selfcerts/key.key  -out /var/selfcerts/certificate.cert

# Add nginx config
COPY config/nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/www", "/etc/nginx/conf.d"]

# Expose HTTP/HTTPS ports
EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx"]
