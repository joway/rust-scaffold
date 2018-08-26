FROM rust:1.28 as builder
WORKDIR /code
COPY Cargo.toml Cargo.lock Makefile ./
COPY ./src ./src
RUN make release

FROM debian:stable-slim
COPY --from=builder /code/target/release/rust-scaffold /bin/
ENTRYPOINT ["rust-scaffold"]
