
FROM oven/bun:latest

WORKDIR /app

COPY . .

RUN bun i

COPY ./wait-for-it.sh /usr/local/bin/wait-for-it
RUN chmod +x /usr/local/bin/wait-for-it

EXPOSE 3333

CMD ["sh", "-c", "/usr/local/bin/wait-for-it postgres:5432 -- bun migrate && bun seed && bun dev"]