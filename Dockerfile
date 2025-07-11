
FROM oven/bun:latest

WORKDIR /app

COPY . .

RUN bun i

EXPOSE 3333

CMD ["sh", "-c", "bun migrate && bun seed && bun dev"]