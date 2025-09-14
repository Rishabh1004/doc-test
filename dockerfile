# Base image
FROM ubuntu:22.04

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2 apache2-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory to Apache web root
WORKDIR /var/www/html

# Copy your HTML files from build context
COPY . .

# Expose HTTP port
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

