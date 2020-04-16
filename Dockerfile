FROM debian:10-slim
ENV LANG C.UTF-8
RUN mkdir -p /usr/share/man/man1 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    gcc \
    git \
    libc6-dev \
    libgl1-mesa-dev \
    libxt-dev \
    maven \
    openjdk-11-jdk && \
  rm -rf /var/lib/apt/lists/*
