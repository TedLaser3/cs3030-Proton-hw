#!/bin/bash - 
#===============================================================================
#
#          FILE: Proton_hw4_wrapper.sh
# 
#         USAGE: ./Proton_hw4_wrapper.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Rob Lemmons (), robertlemmons@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 02/21/2017 23:36
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

#help file
usage()
{
	echo "Usage: Proton_hw4_wrapper.sh [-y year] [-e email] "
	echo "Both -y and -e are required."
	echo "Optionally, -u (user) and -p (password) can be entered"
	exit 1
}

#check for help
if [[ $1 == "--help" ]]
then 
	usage
fi

# close function
close ()
{
	bash delete.sh #calling delete script
	exit 1
}
# getopts file, order should not matter
while getopts ":y:e:u:p:" opt
do
		case $opt in
			y) year=$OPTARG
				;;
			e) email=$OPTARG
				;;
			u) user=$OPTARG
				;;
			p) passwd=$OPTARG
				;;
			\?) usage
				exit 1
				;;
		esac
done

# make y and e required
if [[ -z $year ]]
then 
	usage
fi

if [[ -z $email ]]
then 
	usage
fi

# Call wget
bash Proton_hw4_wget.sh $year

	#check script and dump if fail
	if [[ $? -eq 0 ]]
	then 
		close
	fi

# Call Expand Tar files scripts


# Call Filter script


# Call Zip final file script


# Call FTP script


# Call Cleanup script

exit 0

