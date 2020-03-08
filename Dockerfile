FROM debian:10-slim
ENV LANG C.UTF-8
COPY adoptopenjdk.gpg /etc/apt/trusted.gpg.d/
RUN apt-get update && \
  apt-get install -y apt-transport-https ca-certificates && \
  echo 'deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb buster main' > /etc/apt/sources.list.d/adoptopenjdk.list && \
  apt-get update && \
  mkdir -p /usr/share/man/man1 && \
  apt-get install -y --no-install-recommends adoptopenjdk-8-hotspot && \
  apt-get install -y --no-install-recommends gcc libc6-dev libgl1-mesa-dev libxt-dev maven && \
  apt-get autoremove --purge -y && \
  rm -rf /var/lib/apt/lists/*
