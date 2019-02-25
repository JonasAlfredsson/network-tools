# network-tools
A Debian based container full of useful networking tools to use when debugging
connectivity issues.

## Usage
Start the container in interactive mode and use any of the tools that
are installed.
```bash
docker run -it --rm jonasal/network-tools
```

It might also be desired to attach the container to the host machine's network
instead of having it reside inside the Docker network.
```bash
docker run -it --rm --network host jonasal/network-tools
```

## Installed tools
- ca-certificates
- curl
- dnsutils
    - dig
    - nslookup
    - nsupdate
- iftop
- jq
- net-tools
    - arp
    - ifconfig
    - nameif
    - netstat
    - rarp
    - route
- netcat
- nethogs
- nmap
- openssl
- procps
    - free
    - kill
    - pgrep
    - pkill
    - pmap
    - ps
    - pwdx
    - skill
    - slabtop
    - snice
    - sysctl
    - tload
    - top
    - uptime
    - vmstat
    - w
    - watch
- strace
- tcpdump
- traceroute
- wget
