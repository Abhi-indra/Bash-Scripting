#!/bin/bash

# Checking loyality of Person

read -p "Enter the bandi: " bandi
read -p "Pyaar %" pyaar

if [[ $bandi == "bhabhi" ]];
then
	echo "Bhaiya is loyal"
elif [[ $pyaar -ge 100 ]]
then
	echo "Bhiaya ka pyaar is loyal"
else
	echo "Bhaiya is not loyal"
fi

