#!/bin/bash
mkdir package/base-files/files/config
echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
cd package
mkdir openwrt-packages
cd openwrt-packages
git clone https://github.com/mjyhj/luci-app-serverchan.git
git clone https://github.com/nb12nb34/luci-theme-atmaterial-1.git
cd ../..
./scripts/feeds update -a && ./scripts/feeds install -a 
