# Use the official n8n Docker image
FROM n8nio/n8n

# Set working directory
WORKDIR /home/node

# Copy your local n8n data folder into the n8n container config directory
COPY n8n-data /home/node/.n8n

# Set proper permissions for the copied data
RUN chown -R node:node /home/node/.n8n

# Switch to non-root user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
