FROM node:20-slim AS builder

WORKDIR /app

# Enable Corepack and activate pnpm
RUN corepack enable && corepack prepare pnpm@latest --activate

# Install dependencies based on lockfile for reproducible builds
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# Copy source and build
COPY . .
RUN pnpm build

FROM node:20-slim AS runner
ENV NODE_ENV=production
WORKDIR /app

# Create non-root user for runtime
RUN useradd --uid 1000 --create-home --shell /bin/bash nodeuser || true

# Copy built assets and production dependencies from builder
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/node_modules ./node_modules

EXPOSE 3000

USER nodeuser

CMD ["npm", "run", "start"]
