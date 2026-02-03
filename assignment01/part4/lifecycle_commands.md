# VM Lifecycle Operations Documentation

## Snapshot Operations (Using Disk Copies)

Due to qemu-img snapshot metadata limitations on Windows/MSYS2, snapshots were implemented using disk copies, which is functionally equivalent.

### Create Snapshot
```bash
# Shutdown VM
ssh -p 2222 root@localhost "poweroff"
sleep 10

# Create snapshot backup
cp alpine-vm.qcow2 alpine-vm-snapshot1.qcow2
```

### Restore Snapshot

# Restore from snapshot
cp alpine-vm-snapshot1.qcow2 alpine-vm.qcow2

# Restart VM
./launch_script.sh
```

# Clone Operations

### Create Clone with Backing File
```bash
qemu-img create -f qcow2 -b ../part2/alpine-vm.qcow2 -F qcow2 alpine-vm-clone.qcow2
```

## Running Multiple VMs

### Original VM (Port 2222)
```bash
./part2/launch_script.sh
ssh -p 2222 root@localhost
```

### Cloned VM (Port 2223)
```bash
./part4/launch_clone.sh
ssh -p 2223 root@localhost
```

## State Verification

### Before Snapshot
```bash
ssh -p 2222 root@localhost "cat /root/test.txt"
# Output: (file doesn't exist)
```

### After Modifications
```bash
ssh -p 2222 root@localhost "echo 'After snapshot' > /root/test.txt && apk add htop"
```

### After Restore
```bash
ssh -p 2222 root@localhost "cat /root/test.txt"
# Output: (file doesn't exist - state restored)
```
