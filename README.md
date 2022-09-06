#Setup

in buildroot, run:
```
make BR2_EXTERNAL=../buildroot-external menuconfig
make redlooper_defconfig
```

## Create a WiFi Configuration
on the host, create a wpa_supplicant.conf file in the rootfs overlay:
```
wpa_passphrase <ESSID> <PASSWORD> > buildroot-external/board/redlooper/rootfs_overlay/etc/wpa_supplicant.conf
```

## Setup SSH
Copy the host's public SSH key to the device's list of authorized keys:
```
mkdir -p buildroot-external/board/redlooper/rootfs_overlay/root/.ssh
cp ~/.ssh/id_rsa.pub buildroot-external/board/redlooper/rootfs_overlay/root/.ssh/authorized_keys
```

To keep the same SSH key for the device after a new build, copy the device's key after the first build to the rootfile system, run the following command on the host:

```
mkdir buildroot-external/board/redlooper/rootfs_overlay/etc/dropbear
scp root@<DEVICE_IP>:/etc/dropbear/dropbear_ed25519_host_key buildroot-external/board/redlooper/rootfs_overlay/etc/dropbear/
```

# Ressources
https://krenzlin.github.io/AKTpi/
Display: https://github.com/adafruit/Raspberry-Pi-Installer-Scripts/blob/a779800e50551c4ec48f3c7aae31a53b6011b9eb/adafruit-pitft.py

# Misc
dtparam=audio=on
modprobe snd-bcm2835
modprobe snd-usb-audio
modprobe snd-seq

