# 1. 彻底移除不需要的插件
rm -rf feeds/luci/applications/luci-app-attendedsysupgrade
rm -rf feeds/packages/utils/attendedsysupgrade

# 2. 拉取最新的 momo 源码（不带日期限制，始终最新）
rm -rf package/momo
git clone --depth=1 https://github.com/nikkinikki-org/OpenWrt-momo package/momo

# 3. 处理 athena-led
rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led
