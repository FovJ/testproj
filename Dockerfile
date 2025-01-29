# Use official Node.js LTS image
FROM node:20

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose port (change if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
