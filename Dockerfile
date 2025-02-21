# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install --force

# Copy the rest of the app
COPY . .

# Expose the application port
EXPOSE 5000

# Run the app
CMD ["node", "server.js"]
