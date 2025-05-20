FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy local n8n data
COPY --chown=node:node n8n-data /home/node/.n8n

# Optional: Set correct permissions
RUN chmod 600 /home/node/.n8n/config || true
