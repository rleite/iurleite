FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY site /var/www
