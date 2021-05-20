#!/vendor/bin/sh

if [ -d /sys/module/qti_haptics ]; then
	setprop ro.vendor.mi8937.use_qti_haptics 1
else
	setprop ro.vendor.mi8937.use_qti_haptics 0
fi

exit 0
