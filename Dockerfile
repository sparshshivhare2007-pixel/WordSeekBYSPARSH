# Bun official image
FROM oven/bun:1

# Create app folder
WORKDIR /app

# Copy all project files
COPY . .

# Install dependencies
RUN bun install

# Start command
CMD ["bun", "run", "src/index.ts"]
