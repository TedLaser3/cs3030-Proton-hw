#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_wget.sh
# 
#         USAGE: ./Proton_hw4_wget.sh 
# 
#   DESCRIPTION: the script is responsible for getting the files that we need.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: THEODORE LASER (), theodorelaser@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/21/2017 15:55
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

year=$1
#basic command
#wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_2015.tar.gz
#wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_2016.tar.gz
case $year in
	2015) wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$year.tar.gz
		  ((year++))
		  wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$year.tar.gz
		;;
	2016) wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$year.tar.gz
		  ((year--))
		  wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$year.tar.gz
		;;
	\?) echo "Unknown file"
		;;
esac


#prompt if number given is not 2015 or 2016

#get both files without hardcoding the number

exit 0

