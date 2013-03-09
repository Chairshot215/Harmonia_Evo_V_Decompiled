#!/system/bin/sh
# 
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
#
#
#
# 
# 
# 
# 
# 
# 
# 
# 
# 
#

#
# start ril-daemon only for targets on which radio is present
#
baseband=`getprop ro.baseband`
multirild=`getprop ro.multi.rild`
dsds=`getprop persist.dsds.enabled`
netmgr=`getprop ro.use_data_netmgrd`
case "$baseband" in
    "msm" | "csfb" | "svlte2a" | "unknown")
    start ril-daemon
    start qmuxd
    case "$baseband" in
        "svlte2a" | "csfb")
        start qmiproxy
    esac
    case "$multirild" in
        "true")
         case "$dsds" in
             "true")
             start ril-daemon1
         esac
    esac
    case "$netmgr" in
        "true")
        start netmgrd
    esac
esac

#
# Suppress default route installation during RA for IPV6; user space will take
# care of this
#
for file in /proc/sys/net/ipv6/conf/*
do
  echo 0 > $file/accept_ra_defrtr
done

#
# Update USB serial number if passed from command line
#
serialnum=`getprop ro.serialno`
case "$serialnum" in
    "") ;; #Do nothing, use default serial number or check for persist one below
    * )
    echo "$serialnum" > /sys/class/android_usb/android0/iSerial
esac

#
# Allow unique persistent serial numbers for devices connected via usb
# User needs to set unique usb serial number to persist.usb.serialno
#
serialno=`getprop persist.usb.serialno`
case "$serialno" in
    "") ;; #Do nothing here
    * )
    echo "$serialno" > /sys/class/android_usb/android0/iSerial
esac

#
# Allow persistent usb charging disabling
# User needs to set usb charging disabled in persist.usb.chgdisabled
#
target=`getprop ro.board.platform`
usbchgdisabled=`getprop persist.usb.chgdisabled`
case "$usbchgdisabled" in
    "") ;; #Do nothing here
    * )
    case $target in
        "msm8660" | "msm8660_csfb")
        echo "$usbchgdisabled" > /sys/module/pmic8058_charger/parameters/disabled
        echo "$usbchgdisabled" > /sys/module/smb137b/parameters/disabled
	;;
        "msm8960")
        echo "$usbchgdisabled" > /sys/module/pm8921_charger/parameters/disabled
	;;
    esac
esac

#
# Allow USB enumeration with default PID/VID
#
echo 1  > /sys/class/android_usb/f_mass_storage/lun/nofua
case $target in
    "msm8960")
        socid=`cat /sys/devices/system/soc/soc0/id`
#socid 109: 8064. Revisit later when 8064 target arrives
        case "$socid" in
            "109")
                echo 0       > /sys/class/android_usb/android0/enable
                echo 0x901D  > /sys/class/android_usb/android0/idProduct
                echo 0x05C6  > /sys/class/android_usb/android0/idVendor
                echo diag    > /sys/class/android_usb/android0/f_diag/clients
                echo diag,adb    > /sys/class/android_usb/android0/functions
                echo 1       > /sys/class/android_usb/android0/enable
            ;;
            *)
                echo 0       > /sys/class/android_usb/android0/enable
                echo 0x9025  > /sys/class/android_usb/android0/idProduct
                echo 0x05C6  > /sys/class/android_usb/android0/idVendor
                echo diag    > /sys/class/android_usb/android0/f_diag/clients
                echo smd,tty > /sys/class/android_usb/android0/f_serial/transports
                echo 1       > /sys/class/android_usb/android0/f_rmnet/instances
                echo diag,adb,serial,rmnet,mass_storage    > /sys/class/android_usb/android0/functions
                echo 1       > /sys/class/android_usb/android0/enable
        esac
    ;;
    * )
        case "$baseband" in
            "svlte2a")
                 echo 0       > /sys/class/android_usb/android0/enable
                 echo 0x9037  > /sys/class/android_usb/android0/idProduct
                 echo 0x05C6  > /sys/class/android_usb/android0/idVendor
                 echo diag,diag_mdm    > /sys/class/android_usb/android0/f_diag/clients
                 echo sdio,smd > /sys/class/android_usb/android0/f_serial/transports
                 echo diag,adb,serial,rmnet_smd_sdio,mass_storage    > /sys/class/android_usb/android0/functions
                 echo 1       > /sys/class/android_usb/android0/enable
            ;;
            "csfb")
                 echo 0       > /sys/class/android_usb/android0/enable
                 echo 0x9031  > /sys/class/android_usb/android0/idProduct
                 echo 0x05C6  > /sys/class/android_usb/android0/idVendor
                 echo diag,diag_mdm    > /sys/class/android_usb/android0/f_diag/clients
                 echo sdio,tty > /sys/class/android_usb/android0/f_serial/transports
                 echo diag,adb,serial,rmnet_sdio,mass_storage    > /sys/class/android_usb/android0/functions
                 echo 1       > /sys/class/android_usb/android0/enable
            ;;
            *)
                 echo 0       > /sys/class/android_usb/android0/enable
                 echo 0x9025  > /sys/class/android_usb/android0/idProduct
                 echo 0x05C6  > /sys/class/android_usb/android0/idVendor
                 echo diag    > /sys/class/android_usb/android0/f_diag/clients
                 echo tty,tty > /sys/class/android_usb/android0/f_serial/transports
                 echo diag,adb,serial,rmnet_smd,mass_storage    > /sys/class/android_usb/android0/functions
                 echo 1       > /sys/class/android_usb/android0/enable
                 case "$baseband" in
                     "msm")
                         start port-bridge
                 esac
            ;;
        esac
    ;;
esac


#
# Start gpsone_daemon for SVLTE Type I & II devices
#
case "$target" in
        "msm7630_fusion")
        start gpsone_daemon
esac
case "$baseband" in
        "svlte2a")
        start gpsone_daemon
        start bridgemgrd
esac
case "$target" in
        "msm7630_surf" | "msm8660" | "msm8960")
        start quipc_igsn
esac
case "$target" in
        "msm7630_surf" | "msm8660" | "msm8960")
        start quipc_main
esac

case "$target" in
    "msm7630_surf" | "msm7630_1x" | "msm7630_fusion")
        insmod /system/lib/modules/ss_mfcinit.ko
        insmod /system/lib/modules/ss_vencoder.ko
        insmod /system/lib/modules/ss_vdecoder.ko
        chmod 0666 /dev/ss_mfc_reg
        chmod 0666 /dev/ss_vdec
        chmod 0666 /dev/ss_venc

        value=`cat /sys/devices/system/soc/soc0/hw_platform`

        case "$value" in
            "FFA" | "SVLTE_FFA")
             # linking to surf_keypad_qwerty.kcm.bin instead of surf_keypad_numeric.kcm.bin so that
             # the UI keyboard works fine.
             ln -s  /system/usr/keychars/surf_keypad_qwerty.kcm.bin /system/usr/keychars/surf_keypad.kcm.bin;;
            "Fluid")
             setprop ro.sf.lcd_density 240
             setprop qcom.bt.dev_power_class 2
             start profiler_daemon;;
            *)
             ln -s  /system/usr/keychars/surf_keypad_qwerty.kcm.bin /system/usr/keychars/surf_keypad.kcm.bin;;

        esac

# Dynamic Memory Managment (DMM) provides a sys file system to the userspace
# that can be used to plug in/out memory that has been configured as unstable.
# This unstable memory can be in Active or In-Active State.
# Each of which the userspace can request by writing to a sys file.

# ro.dev.dmm = 1; Indicates that DMM is enabled in the Android User Space. This
# property is set in the Android system properties file.

# ro.dev.dmm.dpd.start_address is set when the target has a 2x256Mb memory
# configuration. This is also used to indicate that the target is capable of
# setting EBI-1 to Deep Power Down or Self Refresh.

        mem="/sys/devices/system/memory"
        op=`cat $mem/movable_start_bytes`
        case "$op" in
           "0" )
                log -p i -t DMM DMM Disabled. movable_start_bytes not set: $op
            ;;

            "$mem/movable_start_bytes: No such file or directory " )
                log -p i -t DMM DMM Disabled. movable_start_bytes does not exist: $op
            ;;

            * )
                log -p i -t DMM DMM available. movable_start_bytes at $op
                movable_start_bytes=0x`cat $mem/movable_start_bytes`
                block_size_bytes=0x`cat $mem/block_size_bytes`
                block=$(($movable_start_bytes/$block_size_bytes))

                echo $movable_start_bytes > $mem/probe
                case "$?" in
                    "0" )
                        log -p i -t DMM $movable_start_bytes to physical hotplug succeeded.
                    ;;
                    * )
                        log -p e -t DMM $movable_start_bytes to physical hotplug failed.
                        return 1
                    ;;
                esac

               chown system system $mem/memory$block/state

                echo online > $mem/memory$block/state
                case "$?" in
                    "0" )
                        log -p i -t DMM \'echo online\' to logical hotplug succeeded.
                    ;;
                    * )
                        log -p e -t DMM \'echo online\' to logical hotplug failed.
                        return 1
                    ;;
                esac

                setprop ro.dev.dmm.dpd.start_address $movable_start_bytes
                setprop ro.dev.dmm.dpd.block $block
            ;;
        esac

        op=`cat $mem/low_power_memory_start_bytes`
        case "$op" in
            "0" )
                log -p i -t DMM Self-Refresh-Only Disabled. low_power_memory_start_bytes not set:$op
            ;;

            "$mem/low_power_memory_start_bytes No such file or directory " )
                log -p i -t DMM Self-Refresh-Only Disabled. low_power_memory_start_bytes does not exist:$op
            ;;

            * )
                log -p i -t DMM Self-Refresh-Only available. low_power_memory_start_bytes at $op
            ;;
        esac
        ;;
    "msm8660" | "msm8660_csfb" )
        platformvalue=`cat /sys/devices/system/soc/soc0/hw_platform`
        case "$platformvalue" in
            "Fluid")
                if [ ! -s /data/system/sensors/settings ]; then
                    # If the settings file is empty, enable sensors
                    # Otherwise leave the file with it's current contents
                    echo 1 > /data/system/sensors/settings
                fi
                start sensors
                setprop ro.sf.lcd_density 240
                start profiler_daemon;;
            "Dragon")
                setprop ro.sound.alsa "WM8903";;
        esac
        chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
        chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup
        ;;
    "msm7627a" )
        chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
        chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup
        ;;
    "msm8960")
        if [ ! -s /data/system/sensors/settings ]; then
            # If the settings file is empty, enable sensors
            # Otherwise leave the file with it's current contents
            echo 1 > /data/system/sensors/settings
        fi
        start sensors
        chown root.system /sys/devices/platform/msm_otg/msm_hsusb/gadget/wakeup
        chmod 220 /sys/devices/platform/msm_otg/msm_hsusb/gadget/wakeup
        ;;
    "msm7630_surf" )
        chown root.system /sys/devices/platform/msm_hsusb/gadget/wakeup
        chmod 220 /sys/devices/platform/msm_hsusb/gadget/wakeup
        ;;

esac
