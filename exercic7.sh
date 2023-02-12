#!/bin/bash 
function copier(){
cp /etc/passwd ~/mypasswd 
if test $? -eq 0
	then return 0 
else return 1
fi
}
function size(){
	echo -n " la taill est : " 
	echo `ls -l ~/mypasswd | awk '{ print $5}'`
}
function nbLigne(){
	echo -n " le nomber de ligne : "
	echo `wc -l ~/mypasswd | awk '{ print $1}'` 
}
clear 
echo " debut de script " 
copier
if test $? -eq 0 ; then
       echo " une copier de passwd est cree " 		
	size        
	nbLigne
	exit 0
else
echo " un erreur est produit " 
exit 1 
fi
