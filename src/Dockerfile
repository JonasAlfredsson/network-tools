FROM debian:stable-slim

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
            curl \
            dnsutils \
            iftop \
            iproute2 \
            jq \
            net-tools \
            netcat \
            nethogs \
            nmap \
            procps \
            strace \
            tcpdump \
            traceroute \
            wget \
    && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD [ "/bin/bash" ]
