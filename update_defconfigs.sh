#!/bin/bash

# List of defconfigs to update
DEFCONFIGS=("sweet" "tucana" "toco" "phoenix" "davinci")

# SukiSU configuration to add
KSU_CONFIG="
# SukiSU Ultra Support
CONFIG_KSU=y
CONFIG_KPM=y
CONFIG_KALLSYMS=y
CONFIG_KALLSYMS_ALL=y

# Enable kprobes for reliable hook
CONFIG_KPROBES=y
CONFIG_HAVE_KPROBES=y
CONFIG_KPROBE_EVENTS=y

# SELinux permissive development
CONFIG_SECURITY_SELINUX_DEVELOP=y
"

echo "Updating defconfigs for SukiSU Ultra..."

for device in "${DEFCONFIGS[@]}"; do
    DEFCONFIG="arch/arm64/configs/${device}_defconfig"
    
    if [ -f "$DEFCONFIG" ]; then
        echo "Updating $DEFCONFIG..."
        
        # Check if KSU config already exists
        if ! grep -q "CONFIG_KSU=y" "$DEFCONFIG"; then
            echo "$KSU_CONFIG" >> "$DEFCONFIG"
            echo "✓ Added SukiSU config to $device"
        else
            echo "⚠ SukiSU config already exists in $device"
        fi
    else
        echo "✗ $DEFCONFIG not found!"
    fi
done

echo ""
echo "All defconfigs updated!"
