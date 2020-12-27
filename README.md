# quake3-arena-server
[![release Actions Status](https://github.com/exesse/quake3-arena-server/workflows/release/badge.svg)](https://github.com/exesse/quake3-arena-server/actions)
[![Release Version](https://img.shields.io/github/v/release/exesse/quake3-arena-server?color=green&include_prereleases)](https://img.shields.io/github/v/release/exesse/quake3-arena-server?color=green&include_prereleases)
[![Docker Image Size](https://img.shields.io/docker/image-size/exesse/q3a-server/latest)](https://img.shields.io/docker/image-size/exesse/q3a-server/latest)
[![Please Follow!](https://img.shields.io/github/followers/exesse?style=social)](https://img.shields.io/github/followers/exesse?style=social)

Quake 3 Arena Server packed as a Docker container.
Base image credentials goes to GitHub user **[jberrenberg](https://github.com/jberrenberg)**.

## Usage

```bash
sudo docker run --name q3a-server -d -p 0.0.0.0:27960:27960/udp q3a-server:latest
```

To start with custom server configuration file mount your config as **/home/ioq3srv/.q3a/baseq3/server.cfg**.

```bash
sudo docker run --name q3a-server -d \
-p 0.0.0.0:27960:27960/udp \
-v path_to_your_config:/home/ioq3srv/.q3a/baseq3/server.cfg \
q3a:latest
```

## Feedback
Email bug reports, questions, discussions to [hi@exesse.org](mailto:hi@exesse.org).