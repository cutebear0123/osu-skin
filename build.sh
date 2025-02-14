#!/bin/bash
set -e

rm -f src/skin.ini
rm -f src/skininfo.json
rm -rf build
cp -r src build
cp skin.ini build
cp skininfo.json build
rm -f *.osk
git add .
read -p "Enter Commit Message: " commit
git commit -m "$commit"
git push
zip -r "Mahiru V$(cat version.txt) ($(git rev-parse --short HEAD))".osk build
git rev-parse --short HEAD
