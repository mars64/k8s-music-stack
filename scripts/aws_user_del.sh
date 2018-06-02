#! /bin/bash

echo "Deleting user for: " $1

echo "Confirm?"
read ANSWER

for key in `aws iam list-access-keys --user-name $1 | grep AccessKeyId | awk -F\" '{print $4}'`;
do
    aws iam delete-access-key --access-key-id $key --user-name $1
done
aws iam remove-user-from-group --group-name admins --user-name $1
aws iam delete-user --user-name $1
