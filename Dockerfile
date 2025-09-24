# syntax=docker/dockerfile:1
FROM node:24.8.0-alpine AS builder

WORKDIR /app

# Copy package files first (best caching)
COPY package.json yarn.lock ./

# Install all dependencies once (cached unless package.json/yarn.lock changes)
RUN yarn install --frozen-lockfile --production=false

# Copy config files (cached unless config changes)
COPY tsconfig.json eslint.config.js .prettierrc.json .prettierignore .swcrc ./

# Copy source code last (invalidates cache only when code changes)
COPY src ./src
COPY tests ./tests

# Build (only runs when source or config changes)
RUN yarn build

# Production stage
FROM node:24.8.0-alpine AS production

# Create non-root user
RUN addgroup -g 1001 -S nodejs && \
    adduser -S appuser -u 1001

WORKDIR /app

# Copy package.json for production install
COPY package.json ./

# Install only production dependencies
RUN yarn install --frozen-lockfile --production=true

# Copy built app with proper ownership
COPY --from=builder --chown=appuser:nodejs /app/dist ./dist

# Switch to non-root user
USER appuser

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD node --version || exit 1

# Start app
CMD ["node", "dist/src/app.js"]
