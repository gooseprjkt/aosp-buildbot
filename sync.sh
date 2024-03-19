#!/bin/bash

echo Downloading sources
mkdir making-zone && cd making-zone

repo init https://github.com/Halium/android.git -b halium-11.0
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j32

echo Downloading proprietary repositories
mkdir device/xiaomi
mkdir vendor/xiaomi
mkdir kernel/xiaomi
git clone https://github.com/crdroidandroid/android_device_xiaomi_chime.git -b 11.0 device/xiaomi/chime
git clone https://github.com/KiranPranay/vendor_xiaomi_juice.git -b 11 vendor/xiaomi/chime
git clone https://github.com/crdroidandroid/android_kernel_xiaomi_chime.git -b 13.0 kernel/xiaomi/chime

echo Sync successful
