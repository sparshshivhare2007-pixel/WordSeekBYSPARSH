FROM oven/bun:1

WORKDIR /app

# Copy all files
COPY . .

# Install all dependencies (dev + prod)
RUN bun install

# Install React runtime (required for .tsx)
RUN bun add react @types/react --dev

# Run database migrations automatically
RUN bun run db:migrate latest || true

# Start the bot
CMD ["bun", "run", "start"]
