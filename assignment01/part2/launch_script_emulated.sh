#!/bin/bash

qemu-system-x86_64 \
  -name "Alpine-VM-Emulated" \
  -m 1024 \
  -smp 2 \
  -accel tcg \
  -drive file=alpine-vm.qcow2,format=qcow2,if=virtio \
  -net nic,model=virtio \
  -net user,hostfwd=tcp:127.0.0.1:2222-:22 \
  -nographic
