# Forwarding X11 over SSH
----------------------------
1. check /etc/ssh/sshd_config on server:

$ /etc/ssh/sshd_config

```
X11Forwarding yes
X11UseLocalhost no
```
restart the srever, if you have made changes.

----

$ /etc/ssh/ssh_config

```
ForwardX11 yes
ForwardX11Trusted yes
```

now ssh into the host using the -X flag
