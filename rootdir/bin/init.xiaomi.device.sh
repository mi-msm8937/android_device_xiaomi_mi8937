#!/vendor/bin/sh

case "$(cat /sys/firmware/devicetree/base/model)" in
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 QRD SKU5")
		if [ -e /sys/class/leds/infrared/transmit ]; then
			setprop ro.vendor.xiaomi.device rolex
		else
			setprop ro.vendor.xiaomi.device riva
		fi
		setprop ro.vendor.xiaomi.series rova
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 0
		;;
	"Qualcomm Technologies, Inc. MSM8917 QRD SKU5")
		setprop ro.vendor.xiaomi.device riva
		setprop ro.vendor.xiaomi.series rova
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 0
		;;
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 MTP")
		setprop ro.vendor.xiaomi.device ugglite
		setprop ro.vendor.xiaomi.series ulysse
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 0
		;;
	"Qualcomm Technologies, Inc. MSM8940-PMI8937 MTP")
		setprop ro.vendor.xiaomi.device ugg
		setprop ro.vendor.xiaomi.series ulysse
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 1
		;;
	"Qualcomm Technologies, Inc. MSM8937-PMI8950 QRD SKU1")
		# Camera
		setprop persist.camera.gyro.android 0
		setprop persist.camera.gyro.disable 1
		# Device Info
		setprop ro.vendor.xiaomi.device land
		setprop ro.vendor.xiaomi.series landtoni
		# Fingerprint
		if grep -E "S88537AC1|S88537EC1" /proc/cmdline ; then
			setprop ro.vendor.fingerprint.supported 0
		else
			setprop ro.vendor.fingerprint.supported 2
		fi
		;;
	"Qualcomm Technologies, Inc. MSM8940-PMI8950 QRD SKU7")
		# Fingerprint
		setprop vendor.fingerprint.goodix.disable_notify_cancel_hack 1
		# Device Info
		setprop ro.vendor.xiaomi.device santoni
		setprop ro.vendor.xiaomi.series landtoni
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 2
		;;
	"Qualcomm Technologies, Inc. MSM8937-PMI8950 MTP")
		setprop ro.vendor.xiaomi.device prada
		# Fingerprint
		setprop ro.vendor.fingerprint.supported 2
		;;
esac

exit 0
