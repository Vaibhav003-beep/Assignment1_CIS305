Student Name: Vaibhav Datta
Student ID: 300206527
Date: January 30th 2026

This assignment demonstrates virtualization fundamentals using QEMU on Windows with WHPX acceleration.

# Environment
Host OS: Windows 11 with MSYS2
Virtualization: QEMU with WHPX acceleration
Guest OS: Alpine Linux 3.19

# Directory Structure
assignment01/
├── README.md
├── part1/
│   ├── host_verification_output.txt
│   ├── host_verification.sh
│   └── setup_notes.md
├── part2/
│   ├── vm_config.md
│   ├── launch_script.sh
│   ├── install_vm.sh
│   ├── launch_script_emulated.sh
│   └── alpine-vm.qcow2
├── part3/
│   ├── benchmark_results/
│   │   ├── cpu_accel.txt
│   │   ├── cpu_emulated.txt
│   │   ├── boot_times.txt
│   │   └── io_benchmark.txt
│   ├── performance_report.md
│   └── measure_boot.sh
└── part4/
├── lifecycle_commands.md
├── screenshots/
│   ├── snapshot_before.png
│   ├── snapshot_after.png
│   └── dual_vm.png
├── launch_clone.sh
└── clone/
└── alpine-vm-clone.qcow2

# Completed Tasks

## Part 1: Environment Setup
- Installed QEMU via MSYS2
- Enabled WHPX acceleration
- Verified hardware acceleration support
- Created lab directory structure

## Part 2: VM Creation
- Created 10GB qcow2 disk with thin provisioning
- Configured VM with 2 vCPUs and 1GB RAM
- Installed Alpine Linux
- Configured SSH access on port 2222

## Part 3: Performance Comparison
- Ran CPU benchmarks with WHPX and TCG
- Measured boot times in both modes
- Conducted I/O performance tests
- Analyzed performance differences

## Part 4: VM Lifecycle Operations
- Created and applied VM snapshots
- Successfully restored VM state
- Cloned VM with backing file
- Ran multiple VMs simultaneously

# Key Findings
- WHPX acceleration provides ~5-10x CPU performance improvement
- Hardware acceleration essential for practical VM usage
- Snapshots enable quick state rollback
- Cloning allows rapid VM deployment

# Notes
- All benchmarks run on Windows with MSYS2
- Screenshots captured during VM operations
- Full documentation in respective subdirectories
