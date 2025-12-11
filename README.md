# Lineage buildscripts
========================

First I recommend checking the official LineageOS wiki instructions for building for dubai here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.


If you've already synced Lineage-Sources:
----------
    # cd into your ROM's folder
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/Syrkles217/local_manifests/derpcheetah/cheetah.xml > .repo/local_manifests/caiman.xml
    

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
