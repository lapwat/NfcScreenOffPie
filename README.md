# Tools
- adb
- smali / baksmali v2.3+
- zip / unzip
- zipalign

Enable ADB on phone in developper options.

# Copy NfcNci app and decompile code

```sh
$ ./decompile.sh
```

# Create new APK (NfcNcf_align.apk)

```sh
$ ./compile.sh
# output file is tmp/NfcNci_align.apk
```

# Manual commands

```sh
adb push tmp/NfcNci_align.apk /sdcard/
adb shell

# android shell
su
cd /system/app/NfcNci
busybox mount -o remount,rw $PWD
cp /sdcard/NfcNci_align.apk NfcNci.apk
chmod 644 NfcNci.apk
```