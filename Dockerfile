FROM nginx:alpine

# Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static files
COPY . /usr/share/nginx/html

# Remove unnecessary files
RUN rm -f /usr/share/nginx/html/Dockerfile \
    && rm -f /usr/share/nginx/html/nginx.conf \
    && rm -f /usr/share/nginx/html/docker-compose.yml

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
