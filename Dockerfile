# Use official Nginx image
  FROM nginx:alpine
#
# # Remove default nginx content
  RUN rm -rf /usr/share/nginx/html/*
#
# # Copy your HTML files into nginx web root
  COPY . /usr/share/nginx/html/
#
# # Expose port 80
  EXPOSE 80
#
# # Start Nginx
  CMD ["nginx", "-g", "daemon off;"]
#
