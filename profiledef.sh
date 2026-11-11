#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="pin-linux"
iso_label="PIN_$(date +%Y%m)"
iso_publisher="Salih <https://github.com/>"
iso_application="Pin Linux Netinst Live/Rescue DVD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
archps="x86_64"
airootfs_image_type="squashfs"
airootfs_image_compression_options=(-Xbcj x86)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/etc/gdm/custom.conf"]="0:0:644"
)
