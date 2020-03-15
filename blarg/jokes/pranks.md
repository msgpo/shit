# Pranks

### output loud screeching noise to a remote computer's speaker
`dd if=/dev/urandom | ssh -c arcfour -C username@host dd of=/dev/audio0`

could also be /dev/dsp, /dev/snd, etc... would have to know beforehand
