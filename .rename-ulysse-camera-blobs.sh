#!/bin/bash -xe

cd vendor/xiaomi/ulova/proprietary/vendor

cd bin
sed -i 's|libmmcamera_|libUmcamera_|g' *
sed -i 's|libmmcamera2_|libUmcamera2_|g' *
mv mm-qcamera-daemon ulysse_mm-qcamera-daemon
cd ..

cd etc
mv camera Uamera
cd ..

cd lib
sed -i 's|libactuator_|libUctuator_|g' libmmcamera2_sensor_modules.so
sed -i 's|libchromatix_|libUhromatix_|g' libmmcamera2_sensor_modules.so
sed -i 's|libflash_|libUlash_|g' libmmcamera2_sensor_modules.so
sed -i 's|etc/camera|etc/Uamera|g' libmmcamera2_sensor_modules.so
sed -i 's|libmmcamera_|libUmcamera_|g' *.so
sed -i 's|libmmcamera2_|libUmcamera2_|g' *.so
for blob in `ls *.so|grep -vE 'libactuator_|libchromatix_|libmmcamera_|libmmcamera2_'`; do
	sed -i "s|${blob}|$(echo ${blob}|sed 's|.|U|4')|g" $(ls *.so|grep -vE 'libactuator_|libchromatix_')
done
for blob in `ls *.so`; do
	mv ${blob} $(echo ${blob}|sed 's|.|U|4')
done
cd ..

cd ..
find . -type f|sort|sed 's|\./||g' > ../blobs.txt
