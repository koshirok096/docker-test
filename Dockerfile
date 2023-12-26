# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install create-react-app globally
RUN npm install -g create-react-app

# Create a new React app
RUN create-react-app my-react-app

# Set the working directory to the newly created app
WORKDIR /app/my-react-app

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]
