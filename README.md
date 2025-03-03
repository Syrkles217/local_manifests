# Lineage buildscripts
========================

First I recommend checking the official LineageOS wiki instructions for building for dubai here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    # cd into your ROM's folder (IE, from scratch I would mkdir -p ~/android/lineage-21 && cd ~/android/lineage-21)
    repo init -u https://github.com/LineageOS/android.git -b lineage-21.0 --git-lfs
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-21/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-21/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-21/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml
    repo sync

If you've already synced Lineage-Sources:
----------
    # cd into your ROM's folder
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/Syrkles217/local_manifests/lineage-21/extras.xml > .repo/local_manifests/extras.xml
    curl https://raw.githubusercontent.com/Syrkles217/local_manifests/lineage-21/motorola-common.xml > .repo/local_manifests/motorola-common.xml
    curl https://raw.githubusercontent.com/Syrkles217/local_manifests/lineage-21/motorola-sm8550.xml > .repo/local_manifests/motorola-sm8550.xml

Building
----------
    # cd into your ROM's folder
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-21/rtwo_clean_build.sh > rtwo_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm8550/local_manifests/lineage-21/rtwo_dirty_build.sh > rtwo_dirty_build.sh
    ./rtwo_clean_build.sh // for rtwo clean builds
    ./rtwo_dirty_build.sh // for rtwo dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
