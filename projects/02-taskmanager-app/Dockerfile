# Use a lightweight version of Nginx
FROM nginx:alpine

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your local frontend files into the container
# This "bakes" your code into the image
COPY ./dist /usr/share/nginx/html

# Expose the standard web port
EXPOSE 80
