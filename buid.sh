#!/bin/bash

echo Building
. build/envsetup.sh
breakfast "$LUNCH_TARGET"
mka "$BUILDING_OPTIONS"
