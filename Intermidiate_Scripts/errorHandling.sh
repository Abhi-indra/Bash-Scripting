#!/bin/bash

function create_directory(){
	mkdir demo
}

if ! create_directory; then
	echo "The code is being exited as the directory already exists"
	exit 1
fi
create_directory
