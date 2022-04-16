FROM node:16 AS builder
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm ci --only=production
COPY . /app/

FROM gcr.io/distroless/nodejs:16
COPY --from=builder /app /app
WORKDIR /app
CMD ["main.js"]