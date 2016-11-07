#!/bin/bash

#docker-gen and template to create dynamic /etc/hosts for docker

mkdir -p /etc/docker-gen/templates

cp docker-gen.service /etc/systemd/system/docker-gen.service

cp docker-gen.cfg /etc/docker-gen.cfg

cp docker-gen /usr/sbin/docker-gen

cp dnsmasq.hosts.conf.tmpl  /etc/docker-gen/templates/dnsmasq.hosts.conf.tmpl

systemctl daemon-reload
systemctl enable docker-gen
systemctl start docker-gen


