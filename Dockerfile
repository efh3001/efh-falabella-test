FROM nginx:1.25.3
LABEL maintainer="Enrique Fernandez Hernandez <efernandezh1985@gmail.com>"
LABEL version="1.0"

WORKDIR /srv/www
EXPOSE 80
COPY nginx-config/nginx.conf /etc/nginx/nginx.conf
COPY nginx-config/http.conf /etc/nginx/http.conf
COPY nginx-config/default.conf /etc/nginx/conf.d/default.conf
COPY static/ /srv/www/
CMD ["nginx", "-g", "daemon off;"]