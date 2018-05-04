#!/bin/csh

cd /scratch/spring2018/group28/files/
source environment-setup-i586-poky-linux.csh

echo "VM is now waiting for gdb to start it. Open another terminal and run launchGDB.sh"

qemu-system-i386 -gdb tcp::5528 -S -nographic -kernel bzImage-qemux86.bin -drive file=core-image-lsb-sdk-qemux86.ext4,if=virtio -enable-kvm -net none -usb -localtime --no-reboot --append "root=/dev/vda rw console=ttyS0 debug".

