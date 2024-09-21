# Stage 1: Build the application
FROM node:16-alpine AS build

WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Generate the build (assuming this command builds your application)
RUN npm run generate

# Clean up cache and unnecessary files
RUN rm -rf node_modules/.cache && \
    npm cache clean --force 

# Stage 2: Production image
FROM node:16-alpine AS production

# Set environment to production
ENV NODE_ENV=production

# Set working directory
WORKDIR /app

# Copy the required files from the build stage
COPY --from=build /app/dist /app
COPY --from=build /app/package*.json /app/

# Install only production dependencies
RUN npm install --only=production

# Expose the port that the application will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "start"]
