#!/bin/sh
set -e

apt-get update -y --force-yes

apt-get -y install gcc g++ make sudo apt-utils software-properties-common
echo "----------------- basic packages INSTALLED ---------------------"

# UTF-8 locale settings
apt-get install -y locales
localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
echo "LC_ALL=en_US.UTF-8" >> /etc/environment
echo "LANGUAGE=en_US.UTF-8" >> /etc/environment
echo "LANG=en_US.UTF-8" >> /etc/environment
echo "---------------------- UTF-8 configured --------------------"

#apt-get -y install openjdk-8-jre-headless
#echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/environment
#echo "-------------- JAVA INSTALLED ---------------"

#wget https://github.com/cytoscape/cytoscape/releases/download/3.8.0/Cytoscape_3_8_0_unix.sh
#export "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
#bash Cytoscape_3_7_1_unix.sh -q
#echo "-------------- CYTOSCAPE INSTALLED ---------------"

apt-get -y install screen
echo "-------------- SCREEN INSTALLED ---------------"

apt-get -y install python-dev
echo "---------------------- python-dev installed --------------------"

#apt-get -y install htop
#echo "------------------- HTOP INSTALLED ------------------------"
