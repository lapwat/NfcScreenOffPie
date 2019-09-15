# Tools
- adb
- apktool
- smali / baksmali v2.3+
- zip / unzip
- zipalign

Enable ADB on phone in developper options.

Take a look at `.sh` files to actually see what they do before executing them.

# Decompile process

```sh
# copy original sources
$ adb pull /system/app/NfcNci/NfcNci.apk
$ adb pull /system/framework/framework-res.apk

# create a backup for recovery
$ cp NfcNci.apk NfcNci_bak.apk

# decompile
$ apktool d -f NfcNci.apk -o NfcNci/
```
# Modding

This is the part where you reverse engineer the source code of the app by modifying smali files.

For NfcNci, apply [those changes](https://github.com/lapwat/NfcScreenOffPie/commit/e917ac91b072178ff1ffece25a196c3b5686f1d0).

# Compile process

```sh
# load framework
$ apktool if framework-res.apk

# compile
$ apktool b -f NfcNci/ -o NfcNci_mod.apk

# sign
$ keytool -genkey -v -keystore ~/.android/debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000
$ jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore -storepass android NfcNci_mod.apk androiddebugkey

# align
zipalign -v 4 NfcNci_mod.apk NfcNci_align.apk
```

# Load modded APK on your phone

```sh
adb push NfcNci_align.apk /sdcard/
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
adb push NfcNci_bak.apk /sdcard/
adb shell

# android shell
su
cd /system/app/NfcNci
busybox mount -o remount,rw $PWD
cp /sdcard/NfcNci_bak.apk NfcNci.apk
chmod 644 NfcNci.apk
```

# Sources

Java versions of smali files for reverse engineering

https://android.googlesource.com/platform/packages/apps/Nfc/+/refs/tags/android-9.0.0_r48/src/com/android/nfc/

Big up to Lasse Hyldahl Jensen for his version for Android N

https://lasse-it.dk/2017/01/how-to-modifying-nfcnci-apk-to-run-when-screen-is-turned-off-on-android-nougat/

Script that helped me understand the signing process

https://reverseengineering.stackexchange.com/a/9185