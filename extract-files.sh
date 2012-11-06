#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=janice
COMMON=u8500-common
MANUFACTURER=samsung
#MSO - 20121105 - Clean the used folders to be sure nothing wrong is there
rm -Rf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
rm -Rf ../../../vendor/$MANUFACTURER/$COMMON/proprietary

#recreate the needed folders
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/cameradata
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging



# janice


# u8500-common
adb pull /system/lib/libActionShot.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libActionShot.so
#adb pull /system/lib/libakm.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libakm.so
adb pull /system/lib/libarccamera.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libarccamera.so
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcamera_client.so
#adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcameraservice.so
#adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcamera.so
adb pull /system/lib/libcaps.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcaps.so
adb pull /system/lib/libEGL.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libEGL.so
adb pull /system/lib/libexif.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libexif.so
#adb pull /system/lib/libfimc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libfimc.so
#adb pull /system/lib/libfimg.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libfimg.so
adb pull /system/lib/libGLESv1_CM.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libGLESv1_CM.so
adb pull /system/lib/libGLESv2.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libGLESv2.so
adb pull /system/lib/libMali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libMali.so
adb pull /system/lib/libOpenSLES.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libOpenSLES.so
adb pull /system/lib/libPanoraMax3.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libPanoraMax3.so
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libril.so
#adb pull /system/lib/libs5pjpeg.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libs5pjpeg.so
#adb pull /system/lib/libseccameraadaptor.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libseccameraadaptor.so
#adb pull /system/lib/libseccamera.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libseccamera.so
adb pull /system/lib/libsecjpegarcsoft.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecjpegarcsoft.so
#adb pull /system/lib/libsecjpegboard.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecjpegboard.so
adb pull /system/lib/libsecjpeginterface.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecjpeginterface.so
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsecril-client.so
adb pull /system/lib/libsec-ril.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsec-ril.so
#adb pull /system/lib/libtvoutcec.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutcec.so
#adb pull /system/lib/libtvoutddc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutddc.so
#adb pull /system/lib/libtvoutedid.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutedid.so
#adb pull /system/lib/lib_tvoutengine.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/lib_tvoutengine.so
#adb pull /system/lib/libtvoutfimc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutfimc.so
#adb pull /system/lib/libtvoutfimg.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutfimg.so
#adb pull /system/lib/libtvouthdmi.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvouthdmi.so
#adb pull /system/lib/libtvout_jni.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvout_jni.so
#adb pull /system/lib/libtvoutservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvoutservice.so
#adb pull /system/lib/libtvout.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtvout.so
adb pull /system/bin/BCM4330B1_002.001.003.0693.0699.hcd ../../../vendor/$MANUFACTURER/$COMMON/proprietary/BCM4330B1_002.001.003.0693.0699.hcd
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$COMMON/proprietary/rild
#adb pull /system/bin/tvoutserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/tvoutserver
#adb pull /system/cameradata/datapattern_420sp.yuv ../../../vendor/$MANUFACTURER/$COMMON/proprietary/cameradata/datapattern_420sp.yuv
#adb pull /system/cameradata/datapattern_front_420sp.yuv ../../../vendor/$MANUFACTURER/$COMMON/proprietary/cameradata/datapattern_front_420sp.yuv
adb pull /system/lib/egl/libEGL_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libEGL_mali.so
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLES_android.so
adb pull /system/lib/egl/libGLESv1_CM_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLESv1_CM_mali.so
adb pull /system/lib/egl/libGLESv2_mali.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/egl/libGLESv2_mali.so
#adb pull /system/etc/firmware/qt602240.fw ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/qt602240.fw
#adb pull /system/etc/firmware/RS_M5LS_OB.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/RS_M5LS_OB.bin
#adb pull /system/etc/firmware/RS_M5LS_OC.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/RS_M5LS_OC.bin
#adb pull /system/etc/firmware/RS_M5LS_OE.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/RS_M5LS_OE.bin
#adb pull /system/etc/firmware/RS_M5LS_TB.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/RS_M5LS_TB.bin
#adb pull /system/vendor/firmware/mfc_fw.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/firmware/mfc_fw.bin
#adb pull /system/lib/hw/acoustics.default.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/acoustics.default.so
#adb pull /system/lib/hw/alsa.default.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/alsa.default.so
adb pull /system/lib/hw/copybit.samsung.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/copybit.GT-I9070.so
adb pull /system/lib/hw/gps.janice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gps.GT-I9070.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gralloc.default.so
adb pull /system/lib/hw/gralloc.samsung.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/hw/gralloc.GT-I9070.so
adb pull /system/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/Broadcom_Bluetooth_HID.kcm.bin
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/qwerty2.kcm.bin
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/qwerty.kcm.bin
#adb pull /system/usr/keychars/sec_key.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/sec_key.kcm.bin
#adb pull /system/usr/keychars/sec_touchkey.kcm.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/keychars/sec_touchkey.kcm.bin
adb pull /system/etc/wifi/bcm4330_aps.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_aps.bin
adb pull /system/etc/wifi/bcm4330_mfg.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_mfg.bin
adb pull /system/etc/wifi/bcm4330_sta.bin ../../../vendor/$MANUFACTURER/$COMMON/proprietary/wifi/bcm4330_sta.bin
#adb pull /system/bin/alsa_amixer ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/alsa_amixer
#adb pull /system/bin/alsa_aplay ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/alsa_aplay
#adb pull /system/bin/alsa_ctl ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/alsa_ctl
#adb pull /system/bin/alsa_ucm ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/alsa_ucm
adb pull /system/lib/libasound.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libasound.so
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudio.so
#adb pull /system/lib/libaudioeffect_jni.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudioeffect_jni.so
#adb pull /system/lib/libaudiohw_op.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudiohw_op.so
#adb pull /system/lib/libaudiohw_sf.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudiohw_sf.so
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libaudiopolicy.so
#adb pull /system/lib/liblvvefs.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/liblvvefs.so
#adb pull /system/lib/libmediayamaha.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmediayamaha.so
#adb pull /system/lib/libmediayamaha_jni.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmediayamaha_jni.so
#adb pull /system/lib/libmediayamahaservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmediayamahaservice.so
#adb pull /system/lib/libmediayamaha_tuning_jni.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libmediayamaha_tuning_jni.so
adb pull /system/lib/libsamsungAcousticeq.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsamsungAcousticeq.so
adb pull /system/lib/lib_Samsung_Acoustic_Module_Llite.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Acoustic_Module_Llite.so
adb pull /system/lib/lib_Samsung_Resampler.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Resampler.so
adb pull /system/lib/libsamsungSoundbooster.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsamsungSoundbooster.so
adb pull /system/lib/lib_Samsung_Sound_Booster.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/lib_Samsung_Sound_Booster.so
adb pull /system/lib/libsoundalive.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsoundalive.so
adb pull /system/lib/libsoundpool.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libsoundpool.so
adb pull /system/lib/libSR_AudioIn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libSR_AudioIn.so
#adb pull /system/lib/libyamahasrc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/audio/libyamahasrc.so
adb pull /system/bin/charging_mode ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/charging_mode
adb pull /system/bin/playlpm ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/playlpm
adb pull /system/lib/libQmageDecoder.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/libQmageDecoder.so
adb pull /system/media/battery_batteryerror.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_batteryerror.qmg
adb pull /system/media/battery_charging_5.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_5.qmg
adb pull /system/media/battery_charging_10.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_10.qmg
adb pull /system/media/battery_charging_15.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_15.qmg
adb pull /system/media/battery_charging_20.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_20.qmg
adb pull /system/media/battery_charging_25.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_25.qmg
adb pull /system/media/battery_charging_30.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_30.qmg
adb pull /system/media/battery_charging_35.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_35.qmg
adb pull /system/media/battery_charging_40.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_40.qmg
adb pull /system/media/battery_charging_45.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_45.qmg
adb pull /system/media/battery_charging_50.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_50.qmg
adb pull /system/media/battery_charging_55.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_55.qmg
adb pull /system/media/battery_charging_60.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_60.qmg
adb pull /system/media/battery_charging_65.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_65.qmg
adb pull /system/media/battery_charging_70.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_70.qmg
adb pull /system/media/battery_charging_75.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_75.qmg
adb pull /system/media/battery_charging_80.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_80.qmg
adb pull /system/media/battery_charging_85.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_85.qmg
adb pull /system/media/battery_charging_90.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_90.qmg
adb pull /system/media/battery_charging_95.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_95.qmg
adb pull /system/media/battery_charging_100.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_charging_100.qmg
adb pull /system/media/battery_error.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/battery_error.qmg
adb pull /system/media/chargingwarning.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/chargingwarning.qmg
adb pull /system/media/Disconnected.qmg ../../../vendor/$MANUFACTURER/$COMMON/proprietary/offmode_charging/Disconnected.qmg

#Device specifics bin  (or board specifics?) from dmesg
adb pull /system/bin/drexe ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drexe
adb pull /system/bin/npsmobex ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/npsmobex
adb pull /system/bin/drmserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drmserver
#adb pull /system/bin/mtvmfservice ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/mtvmfservice
adb pull /system/bin/geomagneticd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/geomagneticd6x
adb pull /system/bin/orientationd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/orientationd6x
adb pull /system/bin/ta_loader ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/ta_loader
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/immvibed
#adb pull /system/bin/RescueStarter ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/RescueStarter
adb pull /system/bin/modem-supervisor ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/modem-supervisor
adb pull /system/bin/copsdaemon ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/copsdaemon
adb pull /system/bin/chargemode ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/chargemode

#Device specifics bin  (or board specifics?) from logcat
adb pull /system/bin/admsrv ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/admsrv
#adb pull /system/bin/mediaserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/mediaserver
adb pull /system/bin/modem-supervisor ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/modem-supervisor
adb pull /system/bin/copsdaemon ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/copsdaemon
adb pull /system/bin/chargemode ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/chargemode
adb pull /system/bin/modem_log_relay ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/modem_log_relay
adb pull /system/bin/npsmobex ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/npsmobex
adb pull /system/bin/drmserver ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/drmserver
adb pull /system/bin/geomagneticd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/geomagneticd6x
adb pull /system/bin/orientationd6x ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/orientationd6x
adb pull /system/bin/ta_loader ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/ta_loader
adb pull /system/bin/immvibed ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/immvibed
adb pull /system/bin/at_core ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/at_core
adb pull /system/bin/at_distributor ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/at_distributor
adb pull /system/etc/adm.sqlite ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc/adm.sqlite
adb pull /system/lib/libproduct.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libproduct.so
adb pull /system/lib/libtee.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtee.so
adb pull /system/lib/libste_ens_audio_samplerateconv.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_ens_audio_samplerateconv.so
adb pull /system/lib/libatparser.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libatparser.so
adb pull /system/bin/cspsa-server ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/cspsa-server
adb pull /system/bin/factoryreset ../../../vendor/$MANUFACTURER/$COMMON/proprietary/bin/factoryreset
adb pull /system/lib/libcn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcn.so
adb pull /system/lib/libcspsa.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcspsa.so
adb pull /system/etc/cspsa.conf ../../../vendor/$MANUFACTURER/$COMMON/proprietary/etc/cspsa.conf
adb pull /system/lib/libomission_avoidance.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libomission_avoidance.so
adb pull /system/lib/libstecom.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libstecom.so
adb pull /system/lib/libmpl.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libmpl.so
adb pull /system/lib/libpscc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libpscc.so
adb pull /system/lib/libsterc.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsterc.so
adb pull /system/lib/libsms_server.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsms_server.so
adb pull /system/lib/libcops.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libcops.so
adb pull /system/lib/libmalrf.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libmalrf.so
adb pull /system/lib/libphonet.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libphonet.so
adb pull /system/lib/libisimessage.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libisimessage.so
adb pull /system/lib/liblos.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblos.so


#Libs for amdsrv and mediaserver
adb pull /system/lib/libste_adm_server.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_adm_server.so
adb pull /system/lib/liblvmaservice.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblvmaservice.so
adb pull /system/lib/libste_audio_hwctrl.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_audio_hwctrl.so
adb pull /system/lib/libhalaudioprocessing.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libhalaudioprocessing.so
adb pull /system/lib/libomxil-bellagio.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libomxil-bellagio.so
adb pull /system/lib/libste_ensloader.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libste_ensloader.so
adb pull /system/lib/libnmfee.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libnmfee.so
adb pull /system/lib/libnmf.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libnmf.so
adb pull /system/lib/liblos.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/liblos.so
adb pull /system/lib/libtrace.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libtrace.so
adb pull /system/lib/libsomxaacd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxaacd.so
adb pull /system/lib/libsomxaace.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxaace.so
adb pull /system/lib/libsomxac3d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxac3d.so
adb pull /system/lib/libsomxamrd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxamrd.so
adb pull /system/lib/libsomxamre.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxamre.so
adb pull /system/lib/libsomxcmn.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxcmn.so
adb pull /system/lib/libsomxcore.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxcore.so
adb pull /system/lib/libsomxflacd.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxflacd.so
adb pull /system/lib/libsomxmp3d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxmp3d.so
adb pull /system/lib/libsomxmp43d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxmp43d.so
adb pull /system/lib/libsomxsr263d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxsr263d.so
adb pull /system/lib/libsomxwmad.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmad.so
adb pull /system/lib/libsomxwmv7d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmv7d.so
adb pull /system/lib/libsomxwmv8d.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libsomxwmv8d.so
adb pull /system/lib/libblt_hw.so ../../../vendor/$MANUFACTURER/$COMMON/proprietary/libblt_hw.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\

# All the blobs necessary for galaxys2 devices
PRODUCT_COPY_FILES += \\

EOF


(cat << EOF) | sed s/__COMMON__/$COMMON/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$COMMON/u8500-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
#PRODUCT_COPY_FILES :=
#PRODUCT_COPY_FILES := vendor/__MANUFACTURER__/__COMMON__/proprietary/libcamera.so:obj/lib/libcamera.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libril.so:obj/lib/libril.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsecril-client.so:obj/lib/libsecril-client.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudio.so:obj/lib/libaudio.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudio.so:system/lib/libaudio.so
#PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libmediayamahaservice.so:obj/lib/libmediayamahaservice.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudiopolicy.so:obj/lib/libaudiopolicy.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudiopolicy.so:system/lib/libaudiopolicy.so

# All the blobs necessary for galaxys2 devices
#PRODUCT_COPY_FILES +=
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libActionShot.so:system/lib/libActionShot.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libakm.so:system/lib/libakm.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libarccamera.so:system/lib/libarccamera.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcamera_client.so:system/lib/libcamera_client.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcameraservice.so:system/lib/libcameraservice.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcamera.so:system/lib/libcamera.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcaps.so:system/lib/libcaps.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libEGL.so:system/lib/libEGL.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libexif.so:system/lib/libexif.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libfimc.so:system/lib/libfimc.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libfimg.so:system/lib/libfimg.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libGLESv1_CM.so:system/lib/libGLESv1_CM.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libGLESv2.so:system/lib/libGLESv2.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libMali.so:system/lib/libMali.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libOpenSLES.so:system/lib/libOpenSLES.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libPanoraMax3.so:system/lib/libPanoraMax3.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libril.so:system/lib/libril.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libs5pjpeg.so:system/lib/libs5pjpeg.so
 #   PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libseccameraadaptor.so:system/lib/libseccameraadaptor.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libseccamera.so:system/lib/libseccamera.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsecjpegarcsoft.so:system/lib/libsecjpegarcsoft.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsecjpegboard.so:system/lib/libsecjpegboard.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsecjpeginterface.so:system/lib/libsecjpeginterface.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsecril-client.so:system/lib/libsecril-client.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsec-ril.so:system/lib/libsec-ril.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutcec.so:system/lib/libtvoutcec.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutddc.so:system/lib/libtvoutddc.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutedid.so:system/lib/libtvoutedid.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/lib_tvoutengine.so:system/lib/lib_tvoutengine.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutfimc.so:system/lib/libtvoutfimc.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutfimg.so:system/lib/libtvoutfimg.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvouthdmi.so:system/lib/libtvouthdmi.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvout_jni.so:system/lib/libtvout_jni.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvoutservice.so:system/lib/libtvoutservice.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtvout.so:system/lib/libtvout.so

#PRODUCT_COPY_FILES +=
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/BCM4330B1_002.001.003.0693.0699.hcd:system/bin/BCM4330B1_002.001.003.0693.0699.hcd
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/rild:system/bin/rild
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/tvoutserver:system/bin/tvoutserver

#PRODUCT_COPY_FILES +=
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/cameradata/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/cameradata/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv

PRODUCT_COPY_FILES +=
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/egl/libGLES_android.so:system/lib/egl/libGLES_android.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so

#PRODUCT_COPY_FILES +=
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/qt602240.fw:system/etc/firmware/qt602240.fw
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/RS_M5LS_OB.bin:system/etc/firmware/RS_M5LS_OB.bin
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/RS_M5LS_OC.bin:system/etc/firmware/RS_M5LS_OC.bin
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/RS_M5LS_OE.bin:system/etc/firmware/RS_M5LS_OE.bin
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/RS_M5LS_TB.bin:system/etc/firmware/RS_M5LS_TB.bin
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/firmware/mfc_fw.bin:system/vendor/firmware/mfc_fw.bin

#PRODUCT_COPY_FILES +=
    #PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/acoustics.default.so:system/lib/hw/acoustics.default.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/alsa.default.so:system/lib/hw/alsa.default.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/copybit.GT-I9070.so:system/lib/hw/copybit.samsung.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/gps.GT-I9070.so:system/lib/hw/gps.janice.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/gralloc.default.so:system/lib/hw/gralloc.default.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/hw/gralloc.GT-I9070.so:system/lib/hw/gralloc.samsung.so

#PRODUCT_COPY_FILES +=
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/keychars/Broadcom_Bluetooth_HID.kcm.bin:system/usr/keychars/Broadcom_Bluetooth_HID.kcm.bin
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin
    #PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/keychars/janice-kp.kcm.bin:system/usr/keychars/janice-kp.kcm.bin
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/keychars/Vendor_04E8_Product_7021.kcm.bin:system/usr/keychars/Vendor_04E8_Product_7021.kcm.bin

#PRODUCT_COPY_FILES +=
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/wifi/bcm4330_aps.bin:system/vendor/firmware/bcm4330_aps.bin
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/wifi/bcm4330_mfg.bin:system/vendor/firmware/bcm4330_mfg.bin
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/wifi/bcm4330_sta.bin:system/vendor/firmware/bcm4330_sta.bin

# blobs necessary for audio
#PRODUCT_COPY_FILES +=
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/alsa_amixer:system/bin/alsa_amixer
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/alsa_aplay:system/bin/alsa_aplay
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/alsa_ctl:system/bin/alsa_ctl
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/alsa_ucm:system/bin/alsa_ucm
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libasound.so:system/lib/libasound.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudioeffect_jni.so:system/lib/libaudioeffect_jni.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudiohw_op.so:system/lib/libaudiohw_op.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libaudiohw_sf.so:system/lib/libaudiohw_sf.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/liblvvefs.so:system/lib/liblvvefs.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libmediayamaha.so:system/lib/libmediayamaha.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libmediayamaha_jni.so:system/lib/libmediayamaha_jni.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libmediayamahaservice.so:system/lib/libmediayamahaservice.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libmediayamaha_tuning_jni.so:system/lib/libmediayamaha_tuning_jni.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libsamsungAcousticeq.so:system/lib/libsamsungAcousticeq.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/lib_Samsung_Acoustic_Module_Llite.so:system/lib/lib_Samsung_Acoustic_Module_Llite.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/lib_Samsung_Sound_Booster.so:system/lib/lib_Samsung_Sound_Booster.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libsoundalive.so:system/lib/libsoundalive.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libsoundpool.so:system/lib/libsoundpool.so
    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libSR_AudioIn.so:system/lib/libSR_AudioIn.so
#    PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/audio/libyamahasrc.so:system/lib/libyamahasrc.so

# offmode charging    
#PRODUCT_COPY_FILES +=
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/charging_mode:system/bin/charging_mode
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/playlpm:system/bin/playlpm
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/libQmageDecoder.so:system/lib/libQmageDecoder.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_5.qmg:system/media/battery_charging_5.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_10.qmg:system/media/battery_charging_10.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_15.qmg:system/media/battery_charging_15.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_20.qmg:system/media/battery_charging_20.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_25.qmg:system/media/battery_charging_25.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_30.qmg:system/media/battery_charging_30.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_35.qmg:system/media/battery_charging_35.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_40.qmg:system/media/battery_charging_40.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_45.qmg:system/media/battery_charging_45.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_50.qmg:system/media/battery_charging_50.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_55.qmg:system/media/battery_charging_55.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_60.qmg:system/media/battery_charging_60.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_65.qmg:system/media/battery_charging_65.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_70.qmg:system/media/battery_charging_70.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_75.qmg:system/media/battery_charging_75.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_80.qmg:system/media/battery_charging_80.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_85.qmg:system/media/battery_charging_85.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_90.qmg:system/media/battery_charging_90.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_95.qmg:system/media/battery_charging_95.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_charging_100.qmg:system/media/battery_charging_100.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/battery_error.qmg:system/media/battery_error.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/chargingwarning.qmg:system/media/chargingwarning.qmg
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/offmode_charging/Disconnected.qmg:system/media/Disconnected.qmg

#Device specifics bin  (or board specifics?)
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/drexe:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/npsmobex:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/drmserver:system/bin/
#PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/mtvmfservice:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/geomagneticd6x:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/orientationd6x:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/ta_loader:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/immvibed:system/bin/
#PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/RescueStarter:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/modem-supervisor:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/copsdaemon:system/bin/
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/chargemode:system/bin/

#Device specifics bin  (or board specifics?) from logcat
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/admsrv:system/bin/admsrv
#PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/mediaserver:system/bin/mediaserver
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/modem-supervisor:system/bin/modem-supervisor
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/copsdaemon:system/bin/copsdaemon
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/chargemode:system/bin/chargemode
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/modem_log_relay:system/bin/modem_log_relay
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/npsmobex:system/bin/npsmobex
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/drmserver:system/bin/drmserver
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/geomagneticd6x:system/bin/geomagneticd6x
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/orientationd6x:system/bin/orientationd6x
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/ta_loader:system/bin/ta_loader
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/immvibed:system/bin/immvibed
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/at_core:system/bin/at_core
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/at_distributor:system/bin/at_distributor
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/etc/adm.sqlite:system/etc/adm.sqlite
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libproduct.so:system/lib/libproduct.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtee.so:system/lib/libtee.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libste_ens_audio_samplerateconv.so:system/lib/libste_ens_audio_samplerateconv.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libatparser.so:system/lib/libatparser.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/cspsa-server:system/bin/cspsa-server
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/bin/factoryreset:system/bin/factoryreset
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcn.so:system/lib/libcn.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcspsa.so:system/lib/libcspsa.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/etc/cspsa.conf:system/etc/cspsa.conf
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libomission_avoidance.so:system/lib/libomission_avoidance.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libstecom.so:system/lib/libstecom.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libmpl.so:system/lib/libmpl.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libpscc.so:system/lib/libpscc.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsterc.so:system/lib/libsterc.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsms_server.so:system/lib/libsms_server.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libcops.so:system/lib/libcops.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libmalrf.so:system/lib/libmalrf.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libphonet.so:system/lib/libphonet.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libisimessage.so:system/lib/libisimessage.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/liblos.so:system/lib/liblos.so

#Libs for amdsrv
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libste_adm_server.so:system/lib/libste_adm_server.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/liblvmaservice.so:system/lib/liblvmaservice.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libste_audio_hwctrl.so:system/lib/libste_audio_hwctrl.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libhalaudioprocessing.so:system/lib/libhalaudioprocessing.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libomxil-bellagio.so:system/lib/libomxil-bellagio.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxaacd.so:system/lib/libsomxaacd.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxaace.so:system/lib/libsomxaace.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxac3d.so:system/lib/libsomxac3d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxamrd.so:system/lib/libsomxamrd.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxamre.so:system/lib/libsomxamre.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxcmn.so:system/lib/libsomxcmn.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxcore.so:system/lib/libsomxcore.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxflacd.so:system/lib/libsomxflacd.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxmp3d.so:system/lib/libsomxmp3d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxmp43d.so:system/lib/libsomxmp43d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxsr263d.so:system/lib/libsomxsr263d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxwmad.so:system/lib/libsomxwmad.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxwmv7d.so:system/lib/libsomxwmv7d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libsomxwmv8d.so:system/lib/libsomxwmv8d.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libste_ensloader.so:system/lib/libste_ensloader.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libnmfee.so:system/lib/libnmfee.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libnmf.so:system/lib/libnmf.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libtrace.so:system/lib/libtrace.so
PRODUCT_COPY_FILES += vendor/__MANUFACTURER__/__COMMON__/proprietary/libblt_hw.so:system/lib/libblt_hw.so



EOF

./setup-makefiles.sh

