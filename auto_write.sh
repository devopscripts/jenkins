#!/bin/bash
echo "It is " $(date) "now, and write time to ./date.txt"
echo $(pwd)
#date > ./jenkins/date.txt
echo  $(TZ=Australia/Sydney date) > ./jenkins/date.txt

echo "#change dir to github jenkins"
cd jenkins/
echo "#git pull latest code"
git pull
echo "#git commit changes"
git commit -am "add"
echo "#git push to master"
git push origin master 
