#!/bin/bash
while read -r ip host rest; do
    [[ -z "$ip" || "$ip" =~ ^# ]] && continue
    echo "Checking IP: $ip for host: $host"
done < /etc/hosts
