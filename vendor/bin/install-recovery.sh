#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:33554432:610344b9d9e02a2b8e7e4b5e68e95fbbb9554f28; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/by-name/recovery:33554432:610344b9d9e02a2b8e7e4b5e68e95fbbb9554f28 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
