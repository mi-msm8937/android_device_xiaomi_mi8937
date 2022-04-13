/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_utils.h>
#include <libinit_variant.h>

#ifdef USE_EXTRAS
#include <libinit_extras.h>
#endif

#include "vendor_init.h"

#include <android-base/file.h>

static const variant_info_t ugglite_info = {
    .brand = "xiaomi",
    .device = "ugglite",
    .marketname = "",
    .model = "Redmi Note 5A",
    .build_fingerprint = "xiaomi/ugglite/ugglite:7.1.2/N2G47H/V11.0.3.0.NDFMIXM:user/release-keys",
    .vendor_security_patch = "2019-08-01"
};

static const variant_info_t ugg_info = {
    .brand = "xiaomi",
    .device = "ugg",
    .marketname = "",
    .model = "Redmi Note 5A",
    .build_fingerprint = "xiaomi/ugg/ugg:7.1.2/N2G47H/V11.0.2.0.NDKMIXM:user/release-keys",
    .vendor_security_patch = "2019-08-01"
};

static const variant_info_t rolex_info = {
    .brand = "Xiaomi",
    .device = "rolex",
    .marketname = "",
    .model = "Redmi 4A",
    .build_fingerprint = "Xiaomi/rolex/rolex:7.1.2/N2G47H/V10.2.3.0.NCCMIXM:user/release-keys",
    .vendor_security_patch = "2018-07-01"
};

static const variant_info_t riva_info = {
    .brand = "Xiaomi",
    .device = "riva",
    .marketname = "",
    .model = "Redmi 5A",
    .build_fingerprint = "Xiaomi/riva/riva:7.1.2/N2G47H/V10.1.1.0.NCKMIFI:user/release-keys",
    .vendor_security_patch = "2018-07-01"
};

static const variant_info_t land_info = {
    .brand = "Xiaomi",
    .device = "land",
    .marketname = "",
    .model = "Redmi 3S",
    .build_fingerprint = "Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys",
    .vendor_security_patch = "2017-04-01"
};

static const variant_info_t santoni_info = {
    .brand = "Xiaomi",
    .device = "santoni",
    .marketname = "",
    .model = "Redmi 4X",
    .build_fingerprint = "Xiaomi/santoni/santoni:7.1.2/N2G47H/V11.0.2.0.NAMMIXM:user/release-keys",
    .vendor_security_patch = "2018-10-01"
};

static const variant_info_t prada_info = {
    .brand = "Xiaomi",
    .device = "prada",
    .marketname = "",
    .model = "Redmi 4",
    .build_fingerprint = "Xiaomi/prada/prada:6.0.1/MMB29M/V10.2.2.0.MCEMIXM:user/release-keys",
    .vendor_security_patch = "2018-08-01"
};

static void determine_device_land(const std::string &proc_cmdline)
{
    set_variant_props(land_info);

    if (proc_cmdline.find("S88537AB1") != proc_cmdline.npos)
        set_ro_build_prop("model", "Redmi 3X", true);

    if (proc_cmdline.find("S88537AC1") != proc_cmdline.npos || proc_cmdline.find("S88537EC1") != proc_cmdline.npos)
        property_override("ro.vendor.fingerprint.supported", "0");
    else
        property_override("ro.vendor.fingerprint.supported", "2");
}

static void determine_device_santoni(const std::string &proc_cmdline)
{
    set_variant_props(santoni_info);

    if (proc_cmdline.find("S88536CA2") != proc_cmdline.npos)
        set_ro_build_prop("model", "Redmi 4", true);

    property_override("ro.vendor.fingerprint.supported", "2");
}

static void determine_device()
{
    std::string fdt_model, proc_cmdline;

    android::base::ReadFileToString("/proc/cmdline", &proc_cmdline, true);
    if (proc_cmdline.find("S88503") != proc_cmdline.npos) {
        set_variant_props(rolex_info);
        return;
    } else if (proc_cmdline.find("S88505") != proc_cmdline.npos) {
        set_variant_props(riva_info);
        return;
    } else if (proc_cmdline.find("S88537") != proc_cmdline.npos) {
        determine_device_land(proc_cmdline);
        return;
    } else if (proc_cmdline.find("S88536") != proc_cmdline.npos) {
        determine_device_santoni(proc_cmdline);
        return;
    }

    android::base::ReadFileToString("/sys/firmware/devicetree/base/model", &fdt_model, true);
    if (fdt_model.find("MSM8917") != fdt_model.npos)
        set_variant_props(ugglite_info);
    else if (fdt_model.find("MSM8937") != fdt_model.npos) {
        set_variant_props(prada_info);
        property_override("ro.vendor.fingerprint.supported", "2");
    }
    else if (fdt_model.find("MSM8940") != fdt_model.npos)
        set_variant_props(ugg_info);
}

void vendor_load_properties() {
    determine_device();
    set_dalvik_heap();
#ifdef USE_EXTRAS
    load_extras();
#endif
}
