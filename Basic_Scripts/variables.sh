#!/bin/bash
# This is Variable ki Duniya 


firstName="Abhishek"
lastName="Chaurasia"

echo "This is $firstName" "$lastName."

# For running command you can provide command in paranthesis
echo "$(date)"

# For reading Input From the user you can use read
# for example

echo "Enter the name"
read username
sudo useradd -m $username
echo "The new user $username is Entered"


