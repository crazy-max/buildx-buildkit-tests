FROM node:16-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
# this command compiles for linux/arm64 but not linux/amd64
RUN npm ci --ignore-scripts --only=production