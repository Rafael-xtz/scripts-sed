#!/usr/bin/bash


file1=$1
file2=$2
file3=$3
file4=$4
file5=$5

nl1=$(wc -l $file1 | cut -d " " -f1)
nl2=$(wc -l $file2 | cut -d " " -f1)
nl3=$(wc -l $file3 | cut -d " " -f1)
nl4=$(wc -l $file4 | cut -d " " -f1)

echo "Script pars converter listas em csv"


#Valida numero de linhas de todos os arquivos
if [ "$nl1" == "$nl2" ] && [ "$nl2" == "$nl3" ] && [ "$nl2" == "$nl4" ]
rm -f csv.csv

then
	echo Arquivos com numeros iguais de linhas.

#laco de repericao. Imprime uma linha de cada arquivo por vez, na sequencia
	for ((i = 1; i <= $nl1; i++))
	do
		sed -n "$i p" "$file1" >> csv.csv
		sed -n "$i p" "$file2" >> csv.csv
		sed -n "$i p" "$file3" >> csv.csv
		sed -n "$i p" "$file4" >> csv.csv
	
	done


else

echo Arquivos com numeros diferentes de linhas. impossivel prosseguir

fi


