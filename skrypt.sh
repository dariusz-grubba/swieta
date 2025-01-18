#!/bin/bash

mkdir -p "Kartki swiateczne/Kotki" "Kartki swiateczne/Pieski"
mkdir -p "Pozostale/Listy zakupow/Swieta 2022" "Pozostale/Listy zakupow/Swieta 2023"
mkdir -p "Pozostale/Przepisy" "Prace domowe" "Zadania"

if [[ $1 =~ [0-9]{4} ]]
then


echo "1 kg jablek
4 kg gruszek
500 giszonej kapusty
80 g ziol" > "Pozostale/Przepisy/Lista zakupow${1}.txt"

else 
	echo "argument chujowy"
fi




