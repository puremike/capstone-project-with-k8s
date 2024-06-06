# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Set the working directory in the container
WORKDIR  /usr/share/nginx/html/

# Copy the HTML and CSS files to the appropriate directory in the container
COPY my-app/ .
COPY . .

# Expose port 80
EXPOSE 80
