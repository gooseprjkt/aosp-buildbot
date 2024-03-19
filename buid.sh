#!/bin/bash

echo Building
. build/envsetup.sh
breakfast "$LUNCH_TARGET"
mka mkbootimg
mka "$BUILDING_OPTIONS"
