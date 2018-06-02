#! /bin/bash

echo "Creating user for: " $1

echo "Confirm?"
read ANSWER

aws iam create-user --user-name $1
aws iam add-user-to-group --group-name admins --user-name $1
aws iam create-access-key --user-name $1
