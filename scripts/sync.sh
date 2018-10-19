#!/bin/sh

echo "######### DRY RUN #########"

rsync -azv --dry-run --delete --exclude "sync.sh" --exclude ".terraform" /home/sameer/test-terraform/terraform-host/ezsatsa/* cvc-test-terraform:/home/ezsatsa/
echo "##############\n"

if [ "$1" != "-y" ]
then
   read -p "Do you want to continue?(y/n) " prompt
   if [ "$prompt" != "y" ]
   then
    exit 1
   fi   
fi

echo "\n\nSyncing........"

rsync -azv --delete --exclude "sync.sh" --exclude ".terraform" /home/sameer/test-terraform/terraform-host/ezsatsa/* cvc-test-terraform:/home/ezsatsa/
