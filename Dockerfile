FROM nginx:alpine

# Install shadow package to get useradd command
RUN apk add --no-cache shadow

# Install wget
RUN apk add --no-cache wget

# Add a new user
RUN useradd -m -u 1000 user

# Set the working directory
WORKDIR /app

# Copy the HTML and nginx configuration files
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# Download test data
RUN wget https://github.com/andreped/wsi-visualization-demo/releases/download/sample-data/test-sample.zip \
    && unzip test-sample.zip -d /usr/share/nginx/html \
    && rm test-sample.zip

# Download OpenSeadragon
RUN wget https://github.com/openseadragon/openseadragon/releases/download/v5.0.0/openseadragon-bin-5.0.0.zip \
    && unzip openseadragon-bin-5.0.0.zip -d /usr/share/nginx/html \
    && rm openseadragon-bin-5.0.0.zip

RUN ls -la /usr/share/nginx/html

# Expose port 7860
EXPOSE 7860

# Start nginx as root but serve files as non-root user
CMD ["sh", "-c", "nginx -g 'daemon off;'"]
