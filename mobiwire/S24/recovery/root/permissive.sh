#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
# That can be "/dev/block/bootdevice/by-name" or something like that.
mkdir -p /dev/block/platform/bootdevice/by-name/recovery  
busybox mount -o bind /dev/block/platform/bootdevice/by-name/recovery   /dev/block/platform/bootdevice/by-name/recovery 
