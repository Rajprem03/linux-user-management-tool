#!/bin/bash

echo "===== USER MANAGEMENT TOOL ====="

echo "1. Add User"
echo "2. Delete User"
echo "3. Change Password"
echo "4. Exit"

read -p "Enter your choice: " choice

case $choice in

1)
    read -p "Enter username: " username
    sudo useradd $username
    echo "User added successfully"
    ;;

2)
    read -p "Enter username: " username
    sudo userdel $username
    echo "User deleted successfully"
    ;;

3)
    read -p "Enter username: " username
    sudo passwd $username
    ;;

4)
    echo "Exiting..."
    ;;

*)
    echo "Invalid option"
    ;;
esac
