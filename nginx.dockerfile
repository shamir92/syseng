# Pull the base Debian image
FROM debian:latest

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Adjust Nginx config to stay in foreground
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx"]
