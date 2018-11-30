#################################
#Authors:
#Ghita Iulian Cristian
#Alexandru Bologa
#Alexandru Al. Ecovoiu
#Facultatea de Biologie, Universitatea Bucuresti, 2018
#################################

#!/bin/bash
#$1 = sequence to match
#$2 = filepath to search in
#$3 = filepath to print result

search=`cat $1`
formattedSearch=""
aux="\n*"
len=${#search}
for i in $(seq 1 $len);
do
	formattedSearch+="${search:i-1:1}$aux"
done

out=`grep -Pz --color=always $formattedSearch $2`
echo "$out" > $3
