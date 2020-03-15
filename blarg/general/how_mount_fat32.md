# Mounting FAT32 usb
----------------------------------------
* on linux:
    `mount -o umask=000 /dev/sdb1 /mnt/usb`
* on openbsd:
    `mount_msdos -u mitch /dev/sd1i /mnt/usb`
