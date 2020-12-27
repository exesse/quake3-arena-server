# quake3-arena-server
Quake 3 Arena Server packed as a Docker container.
Base image credentials goes to GitHub user **[jberrenberg](https://github.com/jberrenberg)**.

## Build

Clone this repository and build from source.
```bash
git clone &&
sudo docker build -t q3a-server:latest .
```

## Usage

```bash
sudo docker run --name q3a -d -p 0.0.0.0:27960:27960/udp q3a-server:latest
```

To start with custom server configuration file mount your config as **/home/ioq3srv/.q3a/baseq3/server.cfg**.

```bash
sudo docker run --name q3a -d \
-p 0.0.0.0:27960:27960/udp \
-v path_to_your_config:/home/ioq3srv/.q3a/baseq3/server.cfg \
q3a:latest
```

## Feedback
Email bug reports, questions, discussions to [hi@exesse.org](mailto:hi@exesse.org).