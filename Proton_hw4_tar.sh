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

mkdir tarTemp

tar -xzf $PWD/temp/MOCK_DATA_2015.tar.gz >> tarTemp
tar -xzf $PWD/temp/MOCK_DATA_2016.tar.gz >> tarTemp

for file in tarTemp
do awk -f ',' echo $1 $4 $6 > output.txt
done






exit 0
