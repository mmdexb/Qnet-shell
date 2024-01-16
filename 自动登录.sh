#!/bin/bash

# 生成 4 位随机数
v=$(shuf -i 1000-9999 -n 1)

# 构建访问 URL
url="http://10.20.10.11/drcom/login?callback=dr1003&DDDDD=学号&upass=密码&0MKKey=123456&R1=0&R2=&R3=0&R6=0&para=00&v6ip=&terminal_type=1&lang=zh-cn&jsVersion=4.2.1&v=$v"

# 使用 curl 访问 URL
curl "$url"
