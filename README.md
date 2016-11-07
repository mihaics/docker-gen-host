
docker-gen and template to create /etc/hosts on docker-qa


copy docker-gen.service to /etc/systemd/system/docker-gen.service

copy docker-gen.cfg  to /etc/docker-gen.cfg

copy docker-gen to /usr/sbin/docker-gen

copy dnsmasq.hosts.conf.tmpl  /etc/docker-gen/templates/dnsmasq.hosts.conf.tmpl


run systemctl daemon-reload

run $systemctl enable docker-gen

run $systemctl start docker-gen


