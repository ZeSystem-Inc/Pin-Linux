#!/usr/bin/env bash
# profiledef.sh - Pin Linux Netinst Profile

iso_name="PinLinux-netinst"
iso_label="PINLINUX_$(date +%Y%m)"
iso_publisher="ZeSystem-Inc <ZeSystem-Inc@github.com>"
iso_application="Pin Linux Netinstall Live Media"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x86_64.grub.eltorito' 'uefi-x86_64.grub.esp')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-b' '1M' '-comp' 'xz' '-Xbcj' 'x86')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
)
