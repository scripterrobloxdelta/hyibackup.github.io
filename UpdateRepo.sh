#!/bin/bash
dpkg-scanpackages debs /dev/null > Packages
bzip2 -fks Packages

cat <<EOL > Release
Origin: MyCydiaRepo
Label: MyCydiaRepo
Suite: stable
Version: 1.0
Codename: cydia-ios
Architectures: iphoneos-arm
Components: main
Description: My personal Cydia repo
EOL

echo "Repo updated!"
