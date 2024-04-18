# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Clone the specific commit from the ethereum.org repository
RUN git clone https://github.com/ethereum/ethereum-org.git . && \
    git checkout d4aec41c358b016bc7a87e7ac23016a1da50ef59

# Install any needed packages specified in package.json
RUN npm install

# Globally install grunt-cli
RUN npm install -g grunt-cli

# Build static resources
RUN grunt

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME World

# Run npm start when the container launches
CMD ["npm", "start"]
