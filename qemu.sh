sudo apt install -y qemu-system-aarch64 qemu-efi
dpkg -l |grep qemu
ls -l /usr/bin/qemu*
qemu-system-aarch64 -version
qemu-system-aarch64 -cpu help -machine virt | grep a57
