#!/bin/bash
# a mock build script: substitue the H1_header_str with build number
#                      substitue the H2_header_str with date.txt
#echo $BUILD_NUMBER
commitdate=$(awk 'NR==1' /var/lib/jenkins/jenkins/date.txt)
sed -e "s/H1_header_str/$commitdate/g;s/H2_header_str/$BUILD_NUMBER/g" /var/lib/jenkins/jenkins/template.html > /var/www/html/index.html
