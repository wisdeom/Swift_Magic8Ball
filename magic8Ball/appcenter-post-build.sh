#!/bin/bash

echo 'Building DMG';
​
APP_FILENAME="${PRODUCT_NAME}.app"
#TEMPLATE_LOCATION="${APPCENTER_SOURCE_DIRECTORY}/DMG/Lingo.dmgCanvas"

dist="${APPCENTER_OUTPUT_DIRECTORY}/${APPCENTER_XCODE_SCHEME}_distribution.zip"
unzip $dist -d $APPCENTER_OUTPUT_DIRECTORY


APP=$(find $APPCENTER_OUTPUT_DIRECTORY -name *.app -print -quit)
#echo "Buildong DMG for $APP";
​
#PLIST_PATH="${APP}/Contents/Info.plist"
#BUILD=$(/usr/libexec/PlistBuddy -c "Print :CFBundleVersion" "$PLIST_PATH")
#VERSION=$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "$PLIST_PATH")

#DMG_NAME="Lingo-${VERSION}_${BUILD}.dmg"
#DMG_DESTINATION="${APPCENTER_OUTPUT_DIRECTORY}/${DMG_NAME}"

#echo "Buildong DMG: $DMG_NAME";
#DMGCANVAS=$APPCENTER_SOURCE_DIRECTORY/"DMG/DMG Canvas.app/Contents/Resources/dmgcanvas"
#"$DMGCANVAS" "${TEMPLATE_LOCATION}" "${DMG_DESTINATION}" -setFilePath "Lingo.app" "${APP}"
​
#echo 'Finished building DMG. Sending to S3...';
#aws s3 cp $DMG_DESTINATION "s3://nounproject/lingo/${APPCENTER_XCODE_SCHEME}/${DMG_NAME}"

#echo "Uploaded DMG to s3://nounproject/lingo/$DMG_NAME";

#rm -r "$APP"
#rm "$DMG_DESTINATION"
