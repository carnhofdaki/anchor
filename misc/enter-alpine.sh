#!/bin/sh

D=$HOME/alpine
cd $D/..
unshare -U -m -S 0 --mount-proc=$D/proc -p --fork -r ash -c "
bindev() {
  touch $D/dev/\$1
  mount -o rw,bind /dev/\$1 $D/dev/\$1
}
bindev tty
bindev console
bindev urandom
bindev random
bindev zero
bindev null
bindev full
#bindev ptmx
mkdir -p $D/dev/pts $D/dev/shm
mount -o rw,bind /dev/pts $D/dev/pts
mount -t tmpfs tmpfs $D/tmp
mount -t tmpfs tmpfs $D/dev/shm
grep -qw $D /proc/mounts || { mount -o bind $D $D && BINDROOT=1; }
exec env -i HOME=/root TERM=$TERM chroot $D /bin/sh -l
"
#mount -t proc proc alpine/proc
