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

# Create new APK (NfcNci_align.apk)

```sh
$ ./compile.sh
# output file is tmp/NfcNci_align.apk
```

# Manual commands to copy NfcNci_align back on your phone

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

# Sources

Java versions of smali files for reverse-engineering

https://android.googlesource.com/platform/packages/apps/Nfc/+/refs/tags/android-9.0.0_r48/src/com/android/nfc