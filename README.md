```sh
smali a -o classes.dex NfcNci/
rm -rf unzipped
unzip NfcNci_bak.apk -d unzipped
cp classes.dex unzipped
cd unzipped; zip -r ../NfcNci.apk *
rm NfcNci_align.apk
zipalign -v 4 NfcNci.apk NfcNci_align.apk
adb push NfcNci_align.apk /sdcard/

adb shell

su
cd /system/app/NfcNci
busybox mount -o remount,rw $PWD
cp /sdcard/NfcNci_align.apk NfcNci.apk
chmod 644 NfcNci.apk
```