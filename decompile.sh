# clean
rm -rf tmp/
mkdir -p tmp/
cd tmp/

# copy sources
adb pull /system/framework/arm/
adb pull /system/app/NfcNci/NfcNci.apk
adb pull /system/app/NfcNci/oat/arm64/NfcNci.odex
adb pull /system/app/NfcNci/oat/arm64/NfcNci.vdex

# decompile
baksmali x -c arm/boot.oat -d arm/ NfcNci.odex -o NfcNci/