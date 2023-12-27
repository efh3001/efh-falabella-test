FROM nginx:latest

WORKDIR /srv/www
EXPOSE 80
COPY nginx-config/nginx.conf /etc/nginx/nginx.conf
COPY nginx-config/http.conf /etc/nginx/http.conf
COPY nginx-config/default.conf /etc/nginx/conf.d/default.conf
COPY page/ /srv/www/
CMD ["nginx", "-g", "daemon off;"]