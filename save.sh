rm tenant.tar
rm -rf bin
docker tag registry.newben.net/dev/tenant registry.ekos.local/ekos/tenant
docker save registry.ekos.local/ekos/tenant -o tenant.tar
