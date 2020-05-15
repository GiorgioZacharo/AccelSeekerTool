# AccelSeekerTool

First you need to copy all the necessary files to your LLVM source tree. You need to edit though this line: 

    export LLVM_SRC_TREE="path/to/llvm/source/root"

In order to provide the correct path to your LLVM source tree. 
 

    ./bootstrap.sh


Then you can recompile it using make and a new SO should be created in order to load the BBFreqInfo
pass.

    cd "path/to/llvm/build" && make

# Usage

    cd h264_ir_orig && ./run_sys_aw.sh

# Author

Georgios Zacharopoulos georgios.zacharopoulos@usi.ch Date: April, 2017
