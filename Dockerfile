# Use an official Node.js runtime as a parent image
# The -alpine tag is used for a smaller image size
FROM node:20-alpine


# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
# This is done separately to leverage Docker's layer caching
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application's code to the working directory
COPY . .

# Next.js runs on port 3000 by default, so we expose it
EXPOSE 3000

# The command to start the Next.js development server
CMD ["npm", "run", "dev"]