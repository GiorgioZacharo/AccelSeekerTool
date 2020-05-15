############### This is the System Aware RegionSeeker+ Analysis on the whole app ##############
#
#
#
#    Georgios Zacharopoulos <georgios.zacharopoulos@usi.ch>
#    Date: July, 2016
#    Universita' della Svizzera italiana (USI Lugano)
############################################################################################### 

#!/bin/bash

IRDIR=IR
LLVM_BUILD=~georgios/llvm-8.0.0//build

#cd $IRDIR
#~georgios/llvm-8.0.0//build/bin/llvm-link -S  *.ir -o ../h264.ir
#cd ..



# Collects IO informarmation, Indexes info and generates .gv call graph files for every function.
$LLVM_BUILD/bin/opt -load $LLVM_BUILD/lib/AccelSeekerIO.so -AccelSeekerIO -stats    > /dev/null  h264.ir
mkdir gvFiles; mv *.gv gvFiles/.



for ((i=0; i <= 6 ; i++)) ; do
	echo "$i"
 printf "$i" > level.txt

$LLVM_BUILD/bin/opt -load $LLVM_BUILD/lib/AccelSeeker.so -AccelSeeker -stats    > /dev/null  h264.ir
done

exit 0;

# Delete all files
rm *.txt; rm -r gvFiles
