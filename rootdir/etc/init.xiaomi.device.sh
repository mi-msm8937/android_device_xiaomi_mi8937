#!/vendor/bin/sh

case "$(cat /sys/firmware/devicetree/base/model)" in
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 QRD SKU5")
		setprop ro.xiaomi.series rova
		if [ -f /sys/class/leds/infrared/transmit ]; then
			setprop ro.xiaomi.device rolex
		elif [ -f /dev/spidev7.1 ]; then
			setprop ro.xiaomi.device riva
		else
			setprop ro.xiaomi.device tiare
		fi
		;;
	"Qualcomm Technologies, Inc. MSM8917-PMI8937 MTP")
		setprop ro.xiaomi.series ulysse
		setprop ro.xiaomi.device ugglite
		;;
	"Qualcomm Technologies, Inc. MSM8937-PMI8950 MTP")
		setprop ro.xiaomi.series landtoni
		setprop ro.xiaomi.device prada
		;;
	"Qualcomm Technologies, Inc. MSM8937-PMI8950 QRD SKU1")
		setprop ro.xiaomi.series landtoni
		setprop ro.xiaomi.device land
		;;
	"Qualcomm Technologies, Inc. MSM8940-PMI8950 QRD SKU7")
		setprop ro.xiaomi.series landtoni
		setprop ro.xiaomi.device santoni
		;;
	"Qualcomm Technologies, Inc. MSM8940-PMI8937 MTP")
		setprop ro.xiaomi.series ulysse
		setprop ro.xiaomi.device ugg
		;;
esac

exit 0
