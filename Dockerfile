FROM nginx:latest

# Copy source code to working directory
COPY index.html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


