# Dockerfile
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    apt-get clean

# Copy web files
COPY web/ /var/www/html/

# Copy setup scripts
COPY scripts/setup-cms.sh /usr/local/bin/setup-cms.sh
COPY scripts/setup-flags.sh /usr/local/bin/setup-flags.sh

# Set permissions
RUN chmod +x /usr/local/bin/setup-cms.sh && \
    chmod +x /usr/local/bin/setup-flags.sh

# Expose port 80
EXPOSE 80

# Run setup scripts
RUN /usr/local/bin/setup-cms.sh && \
    /usr/local/bin/setup-flags.sh

# Start Apache
CMD ["apache2ctl", "-D", "FOREGROUND"]
