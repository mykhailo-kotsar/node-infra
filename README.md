# Node Infrastructure

Bash-based node monitoring and deployment setup for blockchain infrastructure.

## Components

- `heartbeat.sh` — monitoring script, writes node status to log every 30 seconds
- `heartbeat.service` — systemd unit for auto-start and auto-restart
- `Dockerfile` — containerized version of the heartbeat monitor

## Usage

### Run as systemd service
```bash
cp heartbeat.sh /usr/local/bin/
chmod +x /usr/local/bin/heartbeat.sh
cp heartbeat.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now heartbeat
```

### Run as Docker container
```bash
docker build -t heartbeat .
docker run -d --name heartbeat heartbeat
```

## Nginx Reverse Proxy

Config located in `nginx/grafana.conf`.

Sets up reverse proxy for Grafana — accessible on port 80 instead of 3000.

```bash
cp nginx/grafana.conf /etc/nginx/sites-available/grafana
ln -s /etc/nginx/sites-available/grafana /etc/nginx/sites-enabled/
nginx -t
systemctl reload nginx
```

## Stack
Linux · Bash · Docker · systemd · AWS EC2 · Nginx
