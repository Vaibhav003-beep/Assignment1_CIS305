#!/bin/bash

qemu-system-x86_64 \
  -name "Alpine-VM" \
  -m 1024 \
  -smp 2 \
  -accel tcg \
  -hda alpine-vm.qcow2 \
  -cdrom alpine-virt-3.19.0-x86_64.iso \
  -boot d \
  -netdev user,id=net0 \
  -device rtl8139,netdev=net0 \
  -vga std \
  -display sdl
