FROM debian:bullseye-slim
WORKDIR /app
ADD target/release/actix-todoapi .
CMD ["/app/actix-todoapi"]