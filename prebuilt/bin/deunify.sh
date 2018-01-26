#!/sbin/sh
#
# deunify
#

# DEVINFO
DEVINFO=$(cat /dev/block/sde21)

echo "DEVINFO: ${DEVINFO}"

case "$DEVINFO" in
  le_zl0*)
    # move firmware
    mv -f /system/etc/firmware/zl0/* /system/etc/firmware/

    # remove nfc perms
    rm -f /system/etc/permissions/android.hardware.nfc*
    rm -f /system/etc/permissions/com.android.nfc*

    # remove nfc hal
    rm -f /system/vendor/lib/hw/nfc_nci.nqx.default.so
    rm -f /system/vendor/lib64/hw/nfc_nci.nqx.default.so
    ;;
  *)
    echo "Nothing to do!"
    ;;
esac

exit 0
