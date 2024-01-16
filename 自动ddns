#!/bin/bash


# 获取本地接口 apclii0 的 IP 地址
#根据自己的网口信息修改
ip_address=$(ip addr show apclii0 | awk '/inet / {split($2, a, "/"); print a[1]}')

# Cloudflare API 相关参数
api_url="https://api.cloudflare.com/client/v4/zones/xxxxxxxxxxxx/dns_records/xxxxxxxxxxx"
api_key="your_api_key"
auth_email="1367072295@qq.com"

# 调用 Cloudflare API 修改 DNS 记录
curl --insecure --request PUT \
  --url "$api_url" \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Email: xxxxxxxx" \
  --header "Authorization: Bearer xxxxxxxxxx" \
  --data '{
    "content": "'"$ip_address"'",
    "name": "xxxxxx.xxx",
    "proxied": false,
    "type": "A",
    "comment": "Domain verification record",
    "ttl": 3600
  }'
