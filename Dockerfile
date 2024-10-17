FROM nginx:alpine

# Install necessary packages
RUN apk add --no-cache shadow wget unzip

# Add a new user
RUN useradd -m -u 1000 user

# Set the working directory
WORKDIR /app

# Copy the HTML and nginx configuration files
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# Download and uncompress test data
RUN wget https://github.com/andreped/wsi-visualization-demo/releases/download/sample-data/test-sample.zip \
    && unzip test-sample.zip -d /usr/share/nginx/html \
    && rm test-sample.zip

# Download and uncompress OpenSeadragon
RUN wget https://github.com/openseadragon/openseadragon/releases/download/v5.0.0/openseadragon-bin-5.0.0.zip \
    && unzip openseadragon-bin-5.0.0.zip -d /usr/share/nginx/html \
    && rm openseadragon-bin-5.0.0.zip

# Change ownership of nginx directories to the new user
RUN chown -R user:user /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html

# Expose port 7860
EXPOSE 7860

# Switch to the new user
USER user

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
