FROM nginx:alpine

# Install shadow package to get useradd command
RUN apk add --no-cache shadow

# Add a new user
RUN useradd -m -u 1000 user

# Set the working directory
WORKDIR /app

# Copy the HTML and nginx configuration files
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 7860
EXPOSE 7860

# Start nginx as root but serve files as non-root user
CMD ["sh", "-c", "nginx -g 'daemon off;'"]
