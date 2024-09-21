# Stage 1: Build the application
FROM node:16-alpine AS build

WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Nuxt application for production
RUN npm run build

# Clean up unnecessary files
RUN rm -rf node_modules/.cache && \
    npm cache clean --force

# Stage 2: Production image
FROM node:16-alpine AS production

# Set environment to production
ENV NODE_ENV=production

WORKDIR /app

# Copy the built application from the build stage
COPY --from=build /app/.nuxt /app/.nuxt
COPY --from=build /app/static /app/static
COPY --from=build /app/package*.json /app/
COPY --from=build /app/nuxt.config.js /app/

# Install only production dependencies
RUN npm install --only=production

# Expose the port that the application will run on
EXPOSE 3000

# Command to run the Nuxt.js application in production mode
CMD ["npm", "run", "start"]
