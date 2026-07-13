FROM node:22.13-alpine AS builder
WORKDIR /usr/src
COPY . .
RUN npm install --global corepack@latest && corepack enable pnpm
RUN pnpm install --frozen-lockfile
RUN pnpm run build

FROM node:22.13-alpine
WORKDIR /usr/app
RUN apk add --no-cache curl
COPY --from=builder /usr/src/dist/output ./output
ENV HOST=0.0.0.0 PORT=4444 NODE_ENV=production
EXPOSE $PORT
CMD ["node", "output/server/index.mjs"]
