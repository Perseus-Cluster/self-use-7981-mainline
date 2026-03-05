#!/bin/bash

# 1. 基础设置
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate

# 2. 核心插件 (OpenClash + Lucky + 组网)
echo "CONFIG_PACKAGE_luci-app-openclash=y" >> .config
echo "CONFIG_PACKAGE_luci-app-lucky=y" >> .config
echo "CONFIG_PACKAGE_luci-app-easytier=y" >> .config
echo "CONFIG_PACKAGE_luci-app-tailscale=y" >> .config
echo "CONFIG_PACKAGE_luci-app-zerotier=y" >> .config  # 加入你清单里的 Zerotier

# 3. DNS 优化与加速 (参考你的清单)
echo "CONFIG_PACKAGE_luci-app-mosdns=y" >> .config
echo "CONFIG_PACKAGE_luci-app-turboacc=y" >> .config
echo "CONFIG_PACKAGE_luci-app-sqm=y" >> .config       # 智能流量管理

# 4. 实用工具 (参考你的清单)
echo "CONFIG_PACKAGE_luci-app-ttyd=y" >> .config      # 网页终端
echo "CONFIG_PACKAGE_luci-app-wol=y" >> .config       # 远程唤醒
echo "CONFIG_PACKAGE_luci-app-upnp=y" >> .config      # 游戏必备
echo "CONFIG_PACKAGE_luci-app-diskman=y" >> .config   # 磁盘管理

# 5. 中文支持
echo "CONFIG_luci-i18n-base-zh-cn=y" >> .config
