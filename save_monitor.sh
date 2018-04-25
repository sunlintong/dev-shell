rm monitor.tar
docker tag registry.newben.net/dev/monitor registry.ekos.local/ekos/monitor
docker save registry.ekos.local/ekos/monitor -o monitor.tar
