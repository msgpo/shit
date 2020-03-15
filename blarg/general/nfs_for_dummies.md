# Setting up NFS
-----------------------------------
1. install nfs-server, nfs-server-kernel or whatever.
2. edit /etc/export with these:
    ```
    /export       192.168.1.0/24(rw,insecure,no_subtree_check,async)
    ```
3. change permissions on /mnt/drive, chmod -R 755
4. on client install nfs-common or nfs-utils, whatever.
5. now mount nfs, and add it to your /etc/fstab!
