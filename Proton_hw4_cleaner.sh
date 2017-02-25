#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_cleaner.sh
# 
#         USAGE: ./Proton_hw4_cleaner.sh 
# 
#   DESCRIPTION: Cleans temp folder 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: THEODORE LASER (), theodorelaser@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/25/2017 18:21
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

#lets clean our mess
cd temp
rm -f *
cd ..
rmdir temp


exit 0

