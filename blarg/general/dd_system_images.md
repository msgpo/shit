== System Images With `dd` ==
------------------------------------

# Create disk image
-------------------------------------

1. Boot from a live media. (if to a external HDD)

2. Make sure no partitions are mounted from the source hard drive. (^-- " ")
 
3. Mount the external HDD, (if using one)

4. Backup the drive.

``dd if=/dev/sdX conv=sync,noerror bs=64K | gzip -c  > /path/to/backup.img.gz``

    * If necessary (e.g. when the format of the external HD is FAT32) split 
      the disk image in volumes (see also the split man pages).
    
       `dd if=/dev/sdX conv=sync,noerror bs=64K | gzip -c | split -a3 -b2G - /path/to/backup.img.gz`
       
    * If there is not enough disk space locally, you may send the image through ssh:
      
        `dd if=/dev/sdX conv=sync,noerror bs=64K | gzip -c | ssh user@local dd of=backup.img.gz`
        
5. Save extra information about the drive geometry necessary in order
to interpret the partition table stored within the image. 
The most important of which is the cylinder size.
 
`fdisk -l /dev/sdX > /path/to/list_fdisk.info`


# Restore system
---------------------------------------

1. To restore your system:
 
    `gunzip -c /path/to/backup.img.gz | dd of=/dev/sdX`

2. When the image has been split, use the following instead:
 
    `cat /path/to/backup.img.gz* | gunzip -c | dd of=/dev/sdX`
