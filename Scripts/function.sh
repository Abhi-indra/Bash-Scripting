#!/bin/bash

<< comment
This is used for learning functions

comment

#This is function definition
function is_check(){
read -p "Enter user name: " username
echo "New user is added $username"
}

# This function call
is_check
