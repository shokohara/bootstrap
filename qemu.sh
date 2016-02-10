sudo apt install -y qemu-system-aarch64
dpkg -l |grep qemu
ls -l /usr/bin/qemu*
qemu-system-aarch64 -version
qemu-system-aarch64 -cpu help -machine virt | grep a57
