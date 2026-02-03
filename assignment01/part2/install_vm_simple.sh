#!/bin/bash

qemu-system-x86_64 \
  -m 1024 \
  -smp 2 \
  -accel tcg \
  -drive file=alpine-vm.qcow2,format=qcow2,if=virtio \
  -cdrom alpine-virt-3.19.0-x86_64.iso \
  -boot d \
  -net nic,model=virtio \
  -net user \
  -nographic
