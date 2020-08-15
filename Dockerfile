FROM debian:buster-slim

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    --no-install-recommends \
    curl=7.64.0-4+deb10u1 \
    vim=2:8.1.0875-5 \
    && rm -rf /var/lib/apt/lists/*
# Configuring the timezone for Eastern Time
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone