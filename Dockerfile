# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Install app dependencies
COPY package.json package-lock.json /app/
RUN npm install

# Copy the Next.js app files into the container
COPY ./src /app

# Build the Next.js app
RUN npm run build

# Expose the port Next.js will run on
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
