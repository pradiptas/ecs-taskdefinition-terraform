FROM nginx:latest
COPY ./site-content/index.html /usr/share/nginx/html/index.html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 3000