# quake3-arena-server
[![Release Version](https://img.shields.io/docker/v/exesse/q3a-server?color=green)](https://hub.docker.com/r/exesse/q3a-server/tags?page=1&ordering=last_updated)
[![release GitHub Actions Status](https://github.com/exesse/quake3-arena-server/workflows/release/badge.svg)](https://github.com/exesse/quake3-arena-server/actions)
[![build DockerHub Status](https://img.shields.io/docker/cloud/build/exesse/q3a-server)](https://hub.docker.com/r/exesse/q3a-server/builds)
[![Docker Image Size](https://img.shields.io/docker/image-size/exesse/q3a-server)](https://hub.docker.com/r/exesse/q3a-server)
[![Please Follow!](https://img.shields.io/github/followers/exesse?style=social)](https://github.com/login?return_to=%2Fexesse)

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