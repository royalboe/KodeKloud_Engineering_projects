FROM node:latest

# Set the working directory to /node_app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json .

# Install dependencies
RUN npm install

# Copy the current directory contents to the container at /node_app
COPY . .

# Expose port 8086
EXPOSE 8086

# Use server.js as the CMD
CMD ["node", "server.js"]
