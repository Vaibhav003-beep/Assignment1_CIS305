# VM Configuration Documentation

## VM Specifications

### Hardware Resources
- vCPUs: 2
- RAM: 1024 MB (1 GB)
- Disk: 10 GB (qcow2 format with thin provisioning)
- Network: e1000 adapter with user-mode networking

### Disk Configuration
- Format: qcow2
- Size: 10 GB
- Provisioning: Thin (dynamic allocation)
- Actual size on host: ~500MB after installation

### Network Configuration
- Type: User-mode networking (SLIRP)
- Port Forwarding: Host port 2222 --- Guest port 22 (SSH)
- Guest IP: DHCP-assigned (typically 10.0.2.15)

### Acceleration
- Method: WHPX (Windows Hypervisor Platform)
- Status: Enabled

## Installation Details
- OS: Alpine Linux 3.19
- Installation Mode: sys (full disk installation)
- SSH Server: OpenSSH (enabled)
- Init System: OpenRC

## Launch Command
```bash
./launch_script.sh
```

## SSH Access
```bash
ssh -p 2222 root@localhost
```
