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

grep -r 'Canada' ./temp/* |

grep -r 'female' ./temp/* |

sed 's/NULL/waldo@weber.edu/g' |

awk -f ',' {print $1 "," $4 "," $6 > Filtered.txt}



exit 0
