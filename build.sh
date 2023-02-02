#!/bin/bash


mkdir -p /app/build
cd /app/build
/home/cpa/buildroot/output/host/usr/bin/qmake ../code/dashboard.pro -spec devices/linux-buildroot-g++ CONFIG+=release
/usr/bin/make qmake_all

/usr/bin/make -j$(nproc)

mv ./dashboard ../
cd ..
