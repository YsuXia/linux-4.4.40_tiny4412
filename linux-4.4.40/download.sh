#!/bin/bash
if [ -e ./arch/arm/boot/uImage ];then
	sudo ./dnw ./arch/arm/boot/uImage
else
	echo "uImage not found"
	exit -1
fi

sleep 1

if [ -e ramdisk.img ];then
	sudo ./dnw ramdisk.img
else
	echo "ramdisk.img not found"
	exit -1
fi

sleep 1

if [ -e ./arch/arm/boot/dts/exynos4412-tiny4412.dtb ];then
	sudo ./dnw ./arch/arm/boot/dts/exynos4412-tiny4412.dtb
else
	echo "dtb not found"
	exit -1
fi
