#!/bin/bash 
if test $# -eq 1 ;then 
	file=$1
else 
	read -p "saisir un nom de  fichier :" file	
fi
if test ! -f $file ; then 
	touch $file
fi
fileSize=`ls -l $file | awk '{print $5}'`
while test $fileSize -lt 550 
do 
	read -p "saisir une chaine : " chaine
        echo $chaine >> $file
	fileSize=`ls -l $file | awk '{print $5}'`
	echo $fileSize
done
exit 0 
