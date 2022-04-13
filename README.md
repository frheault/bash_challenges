# bash_challenges
This should grow using favorite example from students.
bash_challenges to help new students!

# Instructions
You can look at the input/output of each challenge by opening its associated .zip file in the input/output folder. 
Each script (.sh) in the challenges/ folder has 4 sections:
- Initialisation
- User provided solution (only one to be modified)
- Evaluation
- Cleaning

# There is 5 challenges:
- Challenge 0: The input .zip contains a bids-like organisation, delete all subjects with IDs of 2, 3, 4 digits, delete all .json files and diffusion related file with 6 directions.
- Challenge 1: Create folder with this naming convention (s01, s02, ... s99). In each folder add an empty file called logfile.txt
- Challenge 2: Out of the 100 files (text file containing the mrinfo header of a real NIFTI), identify (and delete) the 5 datasets with inconsistent voxel size, voxel order/stride, data type and dimensions.
- Challenge 3: Convert all folders from  NEW_XXy_z to sub-XX/sess-y_z while keeping the files of each folder the same.
- Challenge 4: All subjects have a random list of file name X_Y, where X and Y are between 0 and 100. Identify what files are missing from the whole group. The total amount of combination is 10 000 (100x100), write all the missing X_Y combinations to a .txt file (must be the only one)