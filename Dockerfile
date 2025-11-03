# Use official n8n image
FROM n8nio/n8n:latest

# Working directory (optional)
WORKDIR /data

# Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Arif@
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port
EXPOSE 5678

# Use the default entrypoint of the n8n image
ENTRYPOINT ["n8n"]
CMD ["start"]
