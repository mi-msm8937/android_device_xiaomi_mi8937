#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/lib_fpc_tac_shared.so|vendor/lib64/lib_fpc_tac_shared.so)
            "${PATCHELF}" --add-needed "libshims_binder.so" "${2}"
            ;;
        vendor/lib64/libvendor.goodix.hardware.fingerprint@1.0-service.so)
            "${PATCHELF_0_8}" --remove-needed "libprotobuf-cpp-lite.so" "${2}"
            ;;
        vendor/lib64/hw/fingerprint.land_goodix.default.so)
            "${PATCHELF}" --replace-needed  "libandroid_runtime.so" "libshims_android.so" "${2}"
            ;;
        vendor/lib64/libfpservice.so)
            "${PATCHELF}" --add-needed "libshims_binder.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=mi8937
export DEVICE_COMMON=msm8937-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
