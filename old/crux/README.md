# How do I use these?

I don't host this with httpup so just clone it, copy it wherever, and add the path to your /etc/prt-get.conf.

# Port is broken?

Open an issue / pull request.

# Will it auto update when I do ports -u?

Yes, use this format:


**/etc/ports/mitchweaver.git**
```
# /etc/ports/mitchweaver.git

NAME=mitchweaver
URL=git://github.com/mitchweaver/crux
BRANCH=master
```

**/etc/prt-get.conf**
```
prtdir /usr/ports/mitchweaver
```

# Disclaimer

I do not claim to own the rights to any of this software unless otherwise stated.
