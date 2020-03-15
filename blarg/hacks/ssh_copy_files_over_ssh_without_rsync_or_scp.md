# hack --- copy files over ssh without rsync or scp

`tar -czf - local_folder | ssh user@host tar -xzf -C remote_folder`
