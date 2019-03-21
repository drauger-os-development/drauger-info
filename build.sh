#!/bin/bash
VERSION=$(cat DEBIAN/control | grep 'Version: ' | sed 's/Version: //g')
PAK=$(cat DEBIAN/control | grep 'Package: ' | sed 's/Package: //g')
mkdir ../"$PAK"_"$VERSION"_all
cp -R bin ../"$PAK"_"$VERSION"_all/bin
cp -R etc ../"$PAK"_"$VERSION"_all/etc
cp -R usr ../"$PAK"_"$VERSION"_all/usr
cp -R lib ../"$PAK"_"$VERSION"_all/lib
cp -R dev ../"$PAK"_"$VERSION"_all/dev
cp -R home ../"$PAK"_"$VERSION"_all/home
cp -R proc ../"$PAK"_"$VERSION"_all/proc
cp -R root ../"$PAK"_"$VERSION"_all/root
cp -R run ../"$PAK"_"$VERSION"_all/run
cp -R sbin ../"$PAK"_"$VERSION"_all/sbin
cp -R sys ../"$PAK"_"$VERSION"_all/sys
cp -R tmp ../"$PAK"_"$VERSION"_all/tmp
cp -R var ../"$PAK"_"$VERSION"_all/var
cp -R DEBIAN ../"$PAK"_"$VERSION"_all/DEBIAN
cd ..
dpkg-deb --build "$PAK"_"$VERSION"_all
rm -rf "$PAK"_"$VERSION"_all
