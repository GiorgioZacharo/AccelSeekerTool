# AccelSeekerTool

First you need to copy all the necessary files to your LLVM source tree. You need to edit though this line: 

    export LLVM_SRC_TREE="path/to/llvm/source/root"

In order to provide the correct path to your LLVM source tree. 
 

    ./bootstrap.sh


Then you can recompile it using make and a new SO should be created in order to load the BBFreqInfo
pass.

	cd "path/to/llvm/build" && make

# Usage

	cd h264_ir_orig

	./run_sys_aw.sh

This script invokes the AccelSeeker Analysis passes and generates the files needed to construct the final Merit/Cost estimation.
The files generated are: FCI.txt  IO.txt  LA.txt

        ./generate_accelcands_list.sh

This script generates the Merit/Cost (MC) file along with the implementation of the Overlappping rule in the final Merit/Cost/Indexes (MCI) file.
The files generated are: MCI.txt  MC.txt

The MCI.txt file will be used by the exact selection algorithm in order to select the subsets of the AccelSeeker candidates list that maximize Merit (Speedup)
under various Costs (Area budgets or HW resources).

To delete all data files use:

        scripts/delete_all_data_files.sh 

# Author

Georgios Zacharopoulos georgios@seas.harvard.edu Date: May, 2020
