#!/bin/bash
# Written by Joshua Cagle, Summer Intern extraordinaire! 
echo "Type the name of the module you would like to make, and press [Enter]:"
read name
echo "Is $name correct? Enter y or n:"
read answer
if [ "$answer" == "y" ]
	then
	if [ -d "/etc/puppet/modules/$name" ]
		then 
			echo "The name for the directory already exists, sorry!"
			exit 
		else
			mkdir $name
			cd $name
			mkdir templates
			mkdir tests
			mkdir manifests
	fi
fi
echo
echo "...done."
