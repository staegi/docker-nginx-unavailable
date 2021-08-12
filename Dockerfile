FROM nginx:1.17.10-alpine

ENV DOLLAR $
ENV TARGET_HOST localhost
ENV TARGET_PORT 80
ENV TARGET_SCHEME http
ENV CLIENT_MAX_BODY_SIZE 20M

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /var/www/index.html
