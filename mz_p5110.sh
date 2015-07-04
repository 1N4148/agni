#!/bin/sh

export KERNELDIR=`readlink -f .`
export ARCHIVE=$KERNELDIR/installer
ZIP=/media/nas/Intenso-UltraLine-01/Android

NOW=$(date +"%Y%m%d-%H%M")

echo "Bundling installer for P5110"

cd $ARCHIVE/P5110

rm prebuilt/system/lib/modules/*.ko
rm prebuilt/zImage

cp $KERNELDIR/BUILT_P511x/zImage prebuilt/zImage
cp $KERNELDIR/BUILT_P511x/lib/modules/*.ko prebuilt/system/lib/modules/

zip -r $ZIP/P5110/1N4148-kernel-P5110-$NOW.zip *

cd ..
echo "finished"

