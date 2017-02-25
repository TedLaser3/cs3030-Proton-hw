#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_sed.sh
# 
#         USAGE: ./Proton_hw4_sed.sh 
# 
#   DESCRIPTION: Grep to retrieve and sed to sort info
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Eli Orton (), eliorton@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/23/2017 20:08
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

cd temp
grep -ri "Female,Canada" MOCK_DATA*.csv > outputGREP.txt

sed 's/,,/,waldo@weber.edu,/g' outputGREP.txt > outputSED.txt

awk -F, '{ print $2 " " $3 " " $4 }' outputSED.txt > Filtered.txt

cd ..

exit 0
