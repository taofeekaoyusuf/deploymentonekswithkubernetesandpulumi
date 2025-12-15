# Base image
FROM node:14-alpine

# Working directory
WORKDIR /app

# Copy package files
COPY package*.json ./   

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "app/app.js"]
