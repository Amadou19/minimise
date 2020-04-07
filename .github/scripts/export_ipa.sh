#!/bin/bash

set -eo pipefail

cd native/KotlinIOS

xcodebuild -archivePath DerivedData/Archive/Minimise.xcarchive \
            -exportOptionsPlist KotlinIOS/exportOptions.plist \
            -exportPath DerivedData \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
