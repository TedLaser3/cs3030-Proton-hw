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
user=student1
pass=Bluesky17

#use ftp to connect to the VM
ftp -n 137.190.19.93 << EOS
user $user $pass
ls
exit
EOS
#if user AND password are provided use those

#else use anonymous login

#wget http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_2015.tar.gz



exit 0

