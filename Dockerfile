FROM node:20-alpine

WORKDIR /app

# Copy package files first (layer cache)
COPY src/package*.json ./

RUN npm install --omit=dev

# Copy source code
COPY src/ ./

EXPOSE 3000

CMD ["node", "app.js"]
