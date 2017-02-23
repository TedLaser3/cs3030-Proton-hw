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
ts=`date +%Y_%m_%d_%H:%M`
#enter correct directory
cd temp
#if user AND password are provided use those
if [[ ! -z $user ]]
then
	ftp -n 137.190.19.93 << EOS
	user $user $pass
	put MOCK_DATA_FILTER_$ts.zip
	exit
EOS
echo "File uploaded to $user home directory"
#else use anonymous login
elif [[ ! -z $email ]]
then
	ftp -n 137.190.19.93 << EOS
	user anonymous $email
	cd MockData
	put MOCK_DATA_FILTER_$ts.zip
	exit
EOS
echo "File uploaded to /srv/ftp/MockData"
else
	echo "please enter either a username and password or an email for anonymous ftp"
	cd ..
	exit 1
fi

#return to previous directory
cd ..

exit 0
