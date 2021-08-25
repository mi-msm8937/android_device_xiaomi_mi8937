#!/vendor/bin/sh

case "$(cat /sys/firmware/devicetree/base/model)" in
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 QRD SKU5")
		if [ -e /sys/class/leds/infrared/transmit ]; then
			setprop ro.vendor.xiaomi.device rolex
		else
			setprop ro.vendor.xiaomi.device riva
		fi
		setprop ro.vendor.xiaomi.series rova
		;;
	"Qualcomm Technologies, Inc. MSM8917 QRD SKU5")
		setprop ro.vendor.xiaomi.device riva
		setprop ro.vendor.xiaomi.series rova
		;;
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 MTP")
		setprop ro.vendor.xiaomi.device ugglite
		setprop ro.vendor.xiaomi.series ulysse
		;;
	"Qualcomm Technologies, Inc. MSM8940-PMI8937 MTP")
		setprop ro.vendor.xiaomi.device ugg
		setprop ro.vendor.xiaomi.series ulysse
		;;
esac

exit 0
