# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy any n8n workflows or scripts (optional)
COPY . /data

# Environment variables (optional)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Arif@
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
