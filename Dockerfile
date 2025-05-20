# Use the official n8n image as the base image
FROM n8nio/n8n

# Copy your local n8n-data folder into the container’s n8n folder
COPY n8n-data /home/node/.n8n

# Expose port 5678 to access n8n via web browser
EXPOSE 5678

# Set the default command to start n8n
CMD ["n8n"]
