FROM hshar/webapp
# Use the official Ubuntu as a parent image
FROM ubuntu:latest

# Set environment variables (optional)
ENV DEBIAN_FRONTEND=noninteractive
ADD ./devopsIQ /var/www/html/devopsIQ
# Update the package repository and install packages
RUN apt-get update && \
    apt-get install -y \
    package1 \
    package2 \
    package3

# Add your application files to the container (if needed)
# COPY ./src /app

# Specify the command to run when the container starts
CMD ["bash"]
