#!/bin/bash

# Default IP
sed -i 's/192.168.1.1/192.168.2.200/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf feeds/luci/applications/luci-app-passwall
# Add packages
git clone https://github.com/kiddin9/kwrt-packages package/kwrt-pkg
