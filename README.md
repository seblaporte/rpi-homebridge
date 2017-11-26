# Homebridge server with Docker on Raspberry Pi

## Requirement

- Docker installed on a Raspberry Pi

## Installation

### Build

Run a build to create your image :

```bash
docker build -t rpi-homebridge-v1 .
```

### Run

```bash
docker-compose up -d
```

### Configure Homebridge

Edit configuration in data directory :

```bash
nano data/config.json
```
