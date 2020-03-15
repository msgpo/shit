# Cannot start openvpn --- cannot load UDP/TUN/UAP etc
--------------------------------------------------------
Some distros do not have the tun kernel module loaded by default
(namely gentoo). Add this to your vpn startup script: `sudo modprobe tun`
