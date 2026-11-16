#!/bin/sh
# Pin Linux kimliğini yeniden uygular. Hook ve kurulum tarafından çağrılır.

install -Dm644 /usr/share/pinlinux/os-release /usr/lib/os-release
install -Dm644 /usr/share/pinlinux/issue /etc/issue

# GRUB menüsündeki dağıtım adı
if [ -f /etc/default/grub ] && \
   ! grep -q '^GRUB_DISTRIBUTOR="Pin Linux"' /etc/default/grub; then
    sed -i 's/^GRUB_DISTRIBUTOR=.*/GRUB_DISTRIBUTOR="Pin Linux"/' /etc/default/grub
    [ -d /boot/grub ] && grub-mkconfig -o /boot/grub/grub.cfg
fi

exit 0
