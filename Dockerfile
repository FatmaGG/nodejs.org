# Use an official Node.js image as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies using npm
RUN npm install

# Copy all files from current directory to working directory in container 
COPY . .

# Expose port 3000 from container 
EXPOSE 3000

# Run npm start command when container starts 
CMD [ "npm", "start" ]

