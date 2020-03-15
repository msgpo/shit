# Android --- Transferring files with simple-mtpfs
-----------------------------------------------
1. insure you have the fuse kernel module loaded:
    `modprobe fuse`
2. mount
    `simple-mtpfs --device 1 -o allow_other /mount/point`
3. unmount
    `umount /mount/point`
