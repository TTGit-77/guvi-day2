# Use lightweight nginx image
FROM nginx:1.25-alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy project files into nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
