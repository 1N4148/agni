#!/bin/sh

export KERNELDIR=`readlink -f .`
export ARCHIVE=$KERNELDIR/installer
ZIP=/media/nas/Intenso-UltraLine-01/Android

NOW=$(date +"%Y%m%d-%H%M")

echo "Bundling installer for P3110"

cd $ARCHIVE/P3110

rm prebuilt/system/lib/modules/*.ko
rm prebuilt/zImage

cp $KERNELDIR/BUILT_P311x/zImage prebuilt/zImage
cp $KERNELDIR/BUILT_P311x/lib/modules/*.ko prebuilt/system/lib/modules/

zip -r $ZIP/P3110/1N4148-kernel-P3110-$NOW.zip *

cd ..
echo "finished"

