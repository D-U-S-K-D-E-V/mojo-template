FROM ubuntu:25.10

RUN apt update && apt install -y curl python3 python3-pip
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://pixi.sh/install.sh | sh
ENV PATH="/root/.pixi/bin:${PATH}"

# Use the full path to pixi for initialization
RUN /root/.pixi/bin/pixi --version