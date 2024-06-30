FROM ubuntu:latest

RUN apt-get update && \
      apt-get -y install sudo curl

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

RUN apt-get -y install build-essential

WORKDIR /usr/src/spawner2
COPY . .

RUN cargo build --release

# CMD ["cargo", "test", "--", "--test-threads=1"]
CMD ["./target/release/sp"]