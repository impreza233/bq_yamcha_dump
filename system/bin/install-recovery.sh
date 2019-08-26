#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35331368:ea31d73ec26db0932c62d59f8e72d56de223bc02; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:31460644:64f63d42c5f8e1e6f64c48d46645f05849738167 EMMC:/dev/block/bootdevice/by-name/recovery ea31d73ec26db0932c62d59f8e72d56de223bc02 35331368 64f63d42c5f8e1e6f64c48d46645f05849738167:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
