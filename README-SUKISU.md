# SukiSU Ultra Kernel - SM6150 Devices

This branch contains SukiSU Ultra integration for Xiaomi SM6150 devices.

## Supported Devices
- **sweet** - Redmi Note 10 Pro / Mi 11 Lite 5G NE
- **tucana** - Mi Note 10 / CC9 Pro
- **toco** - Mi Note 10 Lite
- **phoenix** - Redmi K30 / Poco X2
- **davinci** - Mi 9T / Redmi K20

## Features
- ✅ Built-in SukiSU Ultra v3.2.0
- ✅ Kprobe-based hooks (reliable)
- ✅ KernelSU module support
- ✅ ReZygisk for root hiding
- ✅ SELinux enforcing mode

## Building

### Prerequisites
```bash
# Clang toolchain required
~/evo16/prebuilts/clang/host/linux-x86/clang-r547379/
```

### Build Commands
```bash
# Clean build
./build.sh -c

# Build kernel
./build.sh

# Enter device codename when prompted
```

### Output
Flashable zip: `uhqqow-{device}-YYYYMMDD-HHMM.zip`

## Installation
1. Boot to TWRP/OrangeFox recovery
2. Flash the kernel zip
3. Reboot to system
4. Install [SukiSU Ultra Manager](https://github.com/SukiSU-Ultra/SukiSU-Ultra/releases)
5. Enjoy root access!

## Credits
- [SukiSU Ultra](https://github.com/SukiSU-Ultra/SukiSU-Ultra)
- [KernelSU](https://github.com/tiann/KernelSU)
- Original kernel: TheHewra

## License
GPL-2.0
