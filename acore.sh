#!/usr/bin/env bash

[ -z "$WITH_ERRORS" ] && set -e

CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
export http_proxy="http://jiangmeng0606.tpddns.cn:8868"
export https_proxy=$http_proxy
export all_proxy="socks5://jiangmeng0606.tpddns.cn:8668"
echo -e "已开启代理"


source "$CUR_PATH/apps/installer/main.sh"
