# Use the official PHP image from the Docker Hub
FROM php:8.1-cli

# Set the working directory inside the container
WORKDIR /var/www

# Copy the current directory contents into the container at /var/www
COPY . /var/www

# Expose port 80 for the web server
EXPOSE 80

# Start the PHP built-in server when the container starts
CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www"]

