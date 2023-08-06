#!/bin/bash

source build/envsetup.sh

# android_frameworks_av
repopick 342860 # codec2: Use numClientBuffers to control the pipeline
repopick 342861 # CCodec: Control the inputs to avoid pipeline overflow
repopick 342862 # [WA] Codec2: queue a empty work to HAL to wake up allocation thread
repopick 342863 # CCodec: Use pipelineRoom only for HW decoder
repopick 342864 # codec2: Change a Info print into Verbose

# from LineageOS Gerrit Code Review topic 13-kalama
# https://review.lineageos.org/q/topic:%2213-kalama%22

# android_vendor_lineage
repopick 362656 # vars: Add kailua tags

# android_vendor_qcom_opensource_power
repopick 356755 # Power:Update android.hardware.power AIDL interface
repopick 356757 # Power : Modify camera open/close tunings
repopick 356760 # Add 120/240 FPS UCs power hint tuning parameter
repopick 356758 # Power: ZSL preview Silver capped from 729MHz to 825MHz
repopick 356759 # Optimization silver core residency for camcorder UCs

# android_external_wpa_supplicant_8
repopick 362504 # Define new RSN AKM suite selector values
repopick 362505 # SAE: Fix AKM suite selector check for external authentication
repopick 362506 # SAE: Accept FT and -EXT-KEY AKMs for external auth

# from topic 13-qcom-telephony-injection
# https://review.lineageos.org/q/topic:13-qcom-telephony-injection
repopick --topic 13-qcom-telephony-injection
