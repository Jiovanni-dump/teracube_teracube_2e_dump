#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:33554432:e93c98e3db54e96068b884f3e8bb70c506307059; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/by-name/recovery:33554432:e93c98e3db54e96068b884f3e8bb70c506307059 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
