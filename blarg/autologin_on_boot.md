# auto-login via inittab
----------------------------
at end of the line `tty1` in `/etc/inittab` add:
--autologin <username> --noclear
