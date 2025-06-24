FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Create a directory for local node modules
RUN mkdir -p /home/node/.npm-global/lib

# Set npm prefix to local folder so we can install without root
ENV NPM_CONFIG_PREFIX '/home/node/.npm-global'

# Add local bin to PATH
ENV PATH "/home/node/.npm-global/bin:$PATH"

# Install required packages locally
RUN npm install -g jsonwebtoken axios

# Copy local n8n data
COPY --chown=node:node n8n-data /home/node/.n8n

# Optional: Set correct permissions
RUN chmod 600 /home/node/.n8n/config || true
