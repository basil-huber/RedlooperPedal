in buildroot, run:
make BR2_EXTERNAL=../buildroot-external menuconfig
make redlooper_defconfig


## Create a WiFi Configuration
on the host, create a wpa_supplicant.conf file in the rootfs overlay:
```
wpa_passphrase <ESSID> <PASSWORD> > buildroot-external/board/redlooper/rootfs_overlay/etc/wpa_supplicant.conf
```




dtparam=audio=on
modprobe snd-bcm2835
modprobe snd-usb-audio
modprobe snd-seq
https://krenzlin.github.io/AKTpi/
