FROM n8nio/n8n

# Set timezone
ENV GENERIC_TIMEZONE="Asia/Kuala_Lumpur"

# Pass authentication-related environment variables
ENV N8N_BASIC_AUTH_ACTIVE=${N8N_BASIC_AUTH_ACTIVE}
ENV N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
ENV N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}
ENV N8N_AUTH_EXCLUDE_ENDPOINTS=${N8N_AUTH_EXCLUDE_ENDPOINTS}

# Expose default port
EXPOSE 5678

# Start n8n using proper path
CMD ["node", "./packages/cli/bin/n8n"]
