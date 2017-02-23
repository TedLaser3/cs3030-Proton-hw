#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_zip.sh
# 
#         USAGE: ./Proton_hw4_zip.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rob Lemmons (), robertlemmons@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/22/2017 00:34
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
#create zip file

#MOCK_DATA_FILTER_YYYY_MM_DD_HH:MM.zip
#time stamp variable
ts=`date +%Y_%m_%d_%H:%M`
file=MOCK_DATA_FILTER_$ts.zip

#rename and zip vile

# zip (file path) $file


exit 0

