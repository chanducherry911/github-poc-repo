# Use Ubuntu as the base image
FROM ubuntu:latest


# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive


# Update package list and install Nginx
RUN apt-get update && \
apt-get install -y nginx && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*


# Copy a basic HTML page (optional)
# ADD index.html /var/www/html/index.html


# Expose port 80 for HTTP
EXPOSE 80


# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
