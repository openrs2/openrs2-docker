FROM debian:11-slim
ENV LANG C.UTF-8
RUN mkdir -p /usr/share/man/man1 && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    gcc \
    git \
    libc6-dev \
    libglvnd-dev \
    libxt-dev \
    maven \
    openjdk-11-jdk \
    openssh-client \
    rsync && \
  rm -rf /var/lib/apt/lists/*
