## Send piped input to scp to a file
--------------------------------------
`echo something | ssh user@host sh -c 'cat /dev/stdin > /tmp/somefile'`
