#!/bin/bash


# This script is an interactive script that takes 
# these 4 variables:
# working directory, lowest folder count, highest folder count, and the folder names (prefix) 
# and creates directories for you.

# Everything in this script when ran is read from top to bottom and
# executed one line at a time


# Asks for a location for the directory and reminds you that
# the base directory has been "appended to the home directory"
# meaning that you can just type directories that are one
# level down from the home directory
# The echo command just tells bash to say that stuff
echo which folder/directory should I work out of? 
echo p.s. base directory is appended to home directory



# Here you're storing an input into variable base_dir
# This is your "answer" to the question above
# The script has a `read` function that is read after the above echo function
read base_dir

# Echo back your specified base_dir
echo your files will be created in $base_dir





# Asks what the first counted directory will be 
echo What is the first folder number in the directory?

# This is where you input the first number of directories you want there to be
# This is your "answer" to the above question
read patient_directory_count_first




# Asks you what the last counted directory will be
echo What is the last folder number in the directory?

# This is where you input the last counted directory
read patient_directory_count_last

# echo back your specified directory count
# It says (echos back), 
#"I'll make these folder from the 'this number' to 'this number' dude"
echo Will create folders from $patient_directory_count_first to $patient_directory_count_last



# Asks you what the directory prefix (name of folders) will be
echo What is the directory prefix?

# Store prefix into patient_dir_prefix variable
read patient_dir_prefix

# Echos back that it will use the prefix you put into the variable patient_dir_prefix
# In other words it responds with what you're naming your files
# I think the format is always `variable_#` e.g. `Folder_1`
echo Will use the prefix $patient_dir_prefix


# Makes your code look cool by "responding" with a `starting...` thing
echo starting ...



##############################



# the actual code

#
# The eval command fixes a problem you have with expanding variables
# which is the {variable1..varible2}
for i in $(eval echo {$patient_directory_count_first..$patient_directory_count_last}) ; do
	mkdir -p $HOME/$base_dir/${patient_dir_prefix}_$i
done
