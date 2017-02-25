#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_tar.sh
# 
#         USAGE: ./Proton_hw4_tar.sh 
# 
#   DESCRIPTION: Expand tar files and pull info
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Eli Orton (), eliorton@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/21/2017 23:44
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

cd temp
tar -xzf MOCK_DATA_2015.tar.gz
tar -xzf MOCK_DATA_2016.tar.gz
cd ..
#bash ./Proton_hw4_sed.sh |
 
#awk -f ',' {print $1 "," $4 "," $6 > output.txt}






exit 0
