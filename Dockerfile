
FROM oven/bun:latest

WORKDIR /app

COPY . .

RUN bun i

COPY ./wait-for-it.sh /usr/local/bin/wait-for-it
RUN chmod +x /usr/local/bin/wait-for-it

EXPOSE 3333

CMD ["sh", "-c", "bun migrate && bun seed && bun dev"]