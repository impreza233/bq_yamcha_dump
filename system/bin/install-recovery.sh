#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35333416:e22ab5521760f8634e6c81f03537d1706bb1d138; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:31462692:82614595ab67b846a1bc06f9222fc1c6ab8c8217 EMMC:/dev/block/bootdevice/by-name/recovery e22ab5521760f8634e6c81f03537d1706bb1d138 35333416 82614595ab67b846a1bc06f9222fc1c6ab8c8217:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
