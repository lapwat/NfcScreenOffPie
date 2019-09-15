cd tmp/

# clean
rm -rf unzipped/
rm -f NfcNci_align.apk

# compile
smali a -o classes.dex NfcNci/

# unzip apk
unzip NfcNci.apk -d unzipped

# replace dex file
cp classes.dex unzipped

# zip back apk
zip -r NfcNci_modded.apk unzipped/*

# align
zipalign -v 4 NfcNci_modded.apk NfcNci_align.apk
