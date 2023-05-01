curl https://download.docker.com/linux/static/stable/aarch64/docker-23.0.5.tgz -o /tmp/docker.gz
tar xzvf /tmp/docker.gz -C /tmp
mv -f /tmp/docker/* /usr/local/bin
mkdir -p /etc/docker
cp daemon.json /etc/docker/daemon.json
mkdir -p /volume1/@docker/lib
dockerd &
