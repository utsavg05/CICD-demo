# Use Node base image
FROM node:20

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy rest of code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "server.js"]