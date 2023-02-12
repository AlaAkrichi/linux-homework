#!/bin/bash
echo " debut de script "
if test $# -eq 1 ; then 
	dict=$1
else 
	read -p "saisir un diectory " dict 
fi
while test ! -d $dict -o ! -w $dict ; do 
	echo " votre choix n'est pas un directory ou bien protege "
	read -p "saisir un directory > " dict
done
res=0
for f in `ls` ; do
	if test -f $f ; then
		let res=$res+`ls -l ~/mypasswd | awk '{ print $5}'`
	fi
done
echo " la taill totale de $dict est egale a $res"
exit 0
