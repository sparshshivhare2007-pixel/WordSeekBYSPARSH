FROM oven/bun:1 as base

WORKDIR /app

# Copy all files
COPY . .

# Install ALL deps including devDependencies
RUN bun install --production=false

# Install React without modifying package.json
RUN bun add react @types/react --dev

# Expose (if needed)
EXPOSE 3000

# Run bot
CMD ["bun", "run", "src/index.ts"]
