# Use the official n8n image as the base image
FROM n8nio/n8n

# Copy your local n8n data (workflows, SQLite DB, etc.)
COPY n8n-data /home/node/.n8n

# Set working directory to n8n’s expected folder
WORKDIR /home/node

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
