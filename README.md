android_device_htc_chacha
=========================

Copyright (C) 2011 The CyanogenMod Project
Copyright (C) 2011 Andreas Schneider <asn@cryptomilk.org>
Copyright (C) 2013 XDA users

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0


CyanogenMod 10.1 device configuration for HTC ChaCha a810e / Status

  It is still a work in progress.

Based on Andreas Schneider sources 

Forked form OWLProject's github

c[device_htc_marvel](http://git.cryptomilk.org/projects/marvel/android_device_htc_marvel.git/)

c[device_htc_marvel-common](http://git.cryptomilk.org/projects/marvel/android_device_htc_marvel-common.git/)

c[device_htc_msm7x27-common](http://git.cryptomilk.org/projects/marvel/android_device_htc_msm7x27-common.git/)


[OWLProject's github](https://github.com/OWLProject/android_device_htc_marvel)


  - 	bin 	 
	idc 	 
  -	key 	 
  -	Android.mk 	 
  -	AndroidBoard.mk 	 
  -	AndroidProducts.mk 	 
  -	BoardConfig.mk 	 
  -	CleanSpec.mk 	 
  -	README 	 
  -	README.md 	 
  -	board-info.txt 	 
  -	cm.dependencies 	 
  -	cm.mk 	 
  -	device_chacha.mk 	 
	init.chacha.rc 	 
  -	postrecoveryboot.sh 	 
  -	recovery.fstab 	 
   	system.prop 	 
  -	ueventd.chacha.rc 	 
  -	vendorsetup.sh 	 
  -	vold.fstab 	 



* How To Build CM10.1 for HTC chacha:
---------------------------------------

~~~~~~~~~~~~~¿ Your first build ?~~~~~~~~~~~~~~~~~~~~~~~~~

http://source.android.com/source/initializing.html

Follow steps until Number 5 in the following thread
http://forum.xda-developers.com/showthread.php?t=1940778

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Initialize repo:

$ PATH=~/bin:$PATH; repo init -u git://github.com/androidarmv6/android.git -b cm-10.1
$ curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.github.com/Luzifer1984/android_device_htc_chacha/cm-10.1/extra/roomservice.xml
$ repo sync



then diff and patch. Take a look at ./device/htc/chacha/extra/Modified4ChaCha.patch
(Add support for ChaCha,thanks for adumont's patch)
I recommend that you don't use "patch -p1" to do this .
plz manually change these files.


  -	android_packages_app_Camera


OK,let's

Compile:

$ prebuilts/misc/linux-x86/ccache/ccache -M 50G

$ source build/envsetup.sh; ./vendor/cm/get-prebuilts; USE_CCACHE=1
  
$ lunch cm_marvel-userdebug

$ make -j4 bacon

$ adb push out/target/product/DEVICENAME/cm-VERSION-DEVICENAME.zip /mnt/sdcard/

Enjoy!

* CREDITS


  Google
  Android
  CyanogenMod
  androidarmv6
  OWLProject
  Andreas Schneider
  Special thank to winsuk
  Special thank to JDevs
  alquez
  Droste
  pabloPL
  WFS:     crossfire77  rallapag
  ChaCha:  adumont      Lucas Arran
  everyone who's been working on CM10.1
  And you!

EOF
---
