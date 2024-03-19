#!/bin/bash

echo Building
. build/envsetup.sh
breakfast lineage_chime-eng
m -j$(nproc --all)
