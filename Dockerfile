# Bun official image
FROM oven/bun:1

# Create app directory
WORKDIR /app

# Copy package files first (cache optimization)
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install --production

# Copy all project files
COPY . .

# Expose (not required for bot, but safe)
EXPOSE 3000

# Run bot
CMD ["bun", "run", "src/index.ts"]
