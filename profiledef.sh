#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="pinlinux"
iso_label="PINLINUX_$(date +%Y%m)"
iso_publisher="PinLinux Project <https://github.com/ZeSystem-Inc>"
iso_application="PinLinux Netinstall ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.gnupg"]="0:0:700"
)
