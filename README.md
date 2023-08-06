# Lineage buildscripts
========================

Please note, I use ~/android/lineage-20 in this README but you can use whatever folder name you want.

First I recommend checking the official LineageOS wiki instructions for building for dubai here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    mkdir -p ~/android/lineage-20
    cd ~/android/lineage-20
    repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/picks.sh > picks.sh
    repo sync

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/picks.sh > picks.sh
    repo sync

Repopick
----------
    cd ~/android/lineage-20
    chmod +x picks.sh
    ./picks.sh

    # Some of these next ones have merges which repopick doesn't like, so just checkout to last commit on them
    cd vendor/qcom/opensource/healthd-ext
    git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_healthd-ext refs/changes/49/363249/1 && git checkout FETCH_HEAD
    cd ../power
    git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_power refs/changes/19/363019/1 && git checkout FETCH_HEAD
    cd ../usb
    git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_usb refs/changes/14/363014/1 && git checkout FETCH_HEAD
    cd ../vibrator
    git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_vibrator refs/changes/20/363020/1 && git checkout FETCH_HEAD
    cd ../../../../hardware/libhardware_legacy
    git fetch https://github.com/LineageOS/android_hardware_libhardware_legacy refs/changes/39/363139/1 && git checkout FETCH_HEAD
    cd ../qcom-caf/thermal
    git fetch https://github.com/LineageOS/android_hardware_qcom_thermal refs/changes/21/363021/1 && git checkout FETCH_HEAD
    cd ../wlan
    git fetch https://github.com/LineageOS/android_hardware_qcom_wlan refs/changes/37/363137/3 && git checkout FETCH_HEAD
    cd ../../../device/qcom/sepolicy_vndr
    git fetch https://github.com/LineageOS/android_device_qcom_sepolicy_vndr refs/changes/85/363285/1 && git checkout FETCH_HEAD


Building
----------
    cd ~/android/lineage-20
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_clean_build.sh > rtwo_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_dirty_build.sh > rtwo_dirty_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_eng_clean_build.sh > rtwo_eng_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-20/rtwo_eng_dirty_build.sh > rtwo_eng_dirty_build.sh
    ./rtwo_clean_build.sh // for rtwo clean builds
    ./rtwo_dirty_build.sh // for rtwo dirty builds
    ./rtwo_eng_clean_build.sh // for rtwo_eng engineering clean builds
    ./rtwo_eng_dirty_build.sh // for rtwo_eng engineering dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
