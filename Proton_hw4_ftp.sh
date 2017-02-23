#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_ftp.sh
# 
#         USAGE: ./Proton_hw4_ftp.sh 
# 
#   DESCRIPTION: This script will use ftp to upload the sorted file.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: THEODORE LASER (), theodorelaser@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/21/2017 15:56
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
#user=student1
#pass=Bluesky17

#getops
while getopts ":u:p:e:" opt
do
	case $opt in
		u) user=$OPTARG
			;;
		p) pass=$OPTARG
			;;
		e) email=$OPTARG
			;;
	esac
done


#use ftp to connect to the VM
#ftp -n 137.190.19.93 << EOS
#user $user $pass
#ls
#exit
#EOS

#enter correct directory
cd temp
#if user AND password are provided use those
if [[ ! -z $user ]]
then
	ftp -n 137.190.19.93 << EOS
	user $user $pass
	put need final file name here
	exit
EOS
#else use anonymous login
else
	ftp -n 137.190.19.93 << EOS
	user anonymous $email
	cd MockData
	put need final file name here
	exit
EOS
fi

#return to previous directory
cd ..

exit 0
