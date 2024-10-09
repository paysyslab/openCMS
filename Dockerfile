# Use the official Node.js image as a base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Debugging commands
RUN ls -al /app/openapi
RUN cat /app/openapi/openapi.yaml

# Build the documentation (if applicable)
RUN npm run build -- --force

# Expose the port that the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npx", "live-server", "redoc-static.html", "--port=3000"]
