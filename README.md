# Tools
- adb
- smali / baksmali v2.3+
- zip / unzip
- zipalign

Enable ADB on phone in developper options.

Take a look at `.sh` files to actually see what they do before executing them.

# Copy NfcNci APK and decompile code

```sh
$ ./decompile.sh
```

# Mod source code

This is the part where you reverse engineer the source code of the app by modifying smali files.

```sh
# modifying smali files
```

# Compile then align modded APK

```sh
$ ./compile.sh
# output file is tmp/NfcNci_align.apk
```

# Commands to set up modded APK on your phone

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

# Something went wrong?

You can restore the original APK file at any time with those commands.

```sh
adb push tmp/NfcNci_bak.apk /sdcard/
adb shell

# android shell
su
cd /system/app/NfcNci
busybox mount -o remount,rw $PWD
cp /sdcard/NfcNci_bak.apk NfcNci.apk
chmod 644 NfcNci.apk
```

# Sources

Java versions of smali files for reverse-engineering

https://android.googlesource.com/platform/packages/apps/Nfc/+/refs/tags/android-9.0.0_r48/src/com/android/nfc/

Big up to Lasse Hyldahl Jensen for his version for Android N

https://lasse-it.dk/2017/01/how-to-modifying-nfcnci-apk-to-run-when-screen-is-turned-off-on-android-nougat/