# Use the official n8n image which already includes everything
FROM n8nio/n8n:latest

# Set working directory inside container
WORKDIR /home/node

# Copy your saved data folder into the expected n8n config path
COPY n8n-data /home/node/.n8n

# Fix ownership and permissions to avoid permission errors
RUN chown -R node:node /home/node/.n8n && chmod 600 /home/node/.n8n/config || true

# Expose n8n's default port
EXPOSE 5678

# Start n8n with tini as the process manager
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
