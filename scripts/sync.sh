#!/bin/sh

echo "######### DRY RUN #########"

rsync -azv --dry-run --delete --exclude "" --exclude ".terraform" <src>  ssh-host:<dest>
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

rsync -azv --delete --exclude "" --exclude "" <src> ssh-host:<dest>
