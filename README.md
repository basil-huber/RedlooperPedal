in buildroot, run:
make BR2_EXTERNAL=../buildroot-external menuconfig
make redlooper_defconfig


dtparam=audio=on
modprobe snd-bcm2835
modprobe snd-usb-audio
modprobe snd-seq
https://krenzlin.github.io/AKTpi/
