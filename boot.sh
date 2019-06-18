#!/bin/bash

KVER=v5.1
RVER=2016.05

qemu-system-mipsel -M malta -m 128M -smp 1 -no-reboot -nographic \
	-kernel kernel/$KVER/vmlinuz \
	-initrd root/$RVER/rootfs.cpio.gz \
	-append 'route=172.17.0.5 root=/dev/ram0  console=ttyS0' \
	#-net nic,model=pcnet -net tap 
