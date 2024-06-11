# Use the official Node.js image from the Docker Hub
FROM node:hydrogen-alpine3.20
 
# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
 
# Install the dependencies
RUN npm install
 
# Copy the rest of the application code to the working directory
COPY . .
 
# Expose the port that the app runs on
EXPOSE 3000
 
# Command to run the app
CMD ["node", "app.js"]