# Use the official Node.js image as the base image
FROM node:14

# Create a working directory in the container
WORKDIR /app

# Copy your application files and .env file into the container
COPY . .

# Install the Node.js application dependencies
RUN npm install

# Expose the port your application will run on
EXPOSE 3000

# Start your Node.js application
CMD ["node", "index.js"]
