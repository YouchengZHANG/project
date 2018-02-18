
# This script when run creates a template project folder structure at the current location.
# The folder contains seven directories: bash/ scripts/ doc/ data/ result/ assignment/ temp/


# Create project folder
mkdir ./project


# Create directories
for folders in bash scripts doc data temp
do
	mkdir ./project/$folders
done

for folders in result assignment
do
	mkdir ./project/$folders
	for week in week0 week1 week2 week3 week4 
	do
		mkdir ./project/$folders/$week
	done
done


# Create runall.sh as the the main driver script
# Create showfile.sh for showing all the directories and files in the project folder
# Store runall.sh showfile.sh in bash/
echo '# This script runs everything, from processing data, intermediate steps and final results.' >> ./project/bash/runall.sh
echo '# This script when run shows the directories and files in project folder.' >> ./project/bash/showfile.sh
echo '# Running this script needs to first locate to the project root directory' >> ./project/bash/showfile.sh
echo 'find .' >> ./project/bash/showfile.sh


# END
