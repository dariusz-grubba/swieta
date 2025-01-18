#!/bin/bash
mkdir "Kartki swiateczne" "Kartki swiateczne/Kotki" "Kartki swiateczne/Pieski"
mkdir "Pozostale" "Pozostale/Listy zakupow" "Pozostale/Przepisy" "Pozostale/Listy zakupow/Swieta 2022" "Pozostale/Listy zakupow/Swieta 2023"
mkdir "Prace domowe" "Zadania"

if [[ $1 =~ [0-9]{4} ]] ||  [[ $2 =~ [0-9]+ ]] ||  [[ $3 =~ [0-9]+ ]] 
then
        touch "Pozostale/Przepisy/Lista zakupow 2022.txt"
        touch "Pozostale/Przepisy/Lista zakupow 2023.txt"
        echo "świeża mięta
1 kg jabłek
1 kg cytryn
500 g kiszonej kapusty
1 mała główka świeżej kapusty
80 g suszonych, leśnych grzybów
200 g suszonych jabłek, śliwek, gruszek
4 kg ziemniaków
500 g drobnej, białej fasoli
bułka tarta
1 kg cukru
1 l barszczu w kartonie" > "Pozostale/Przepisy/Lista zakupow ${1}.txt"

        mv "Pozostale/Przepisy/Lista zakupow 2022.txt" "Pozostale/Listy zakupow/Swieta 2022/"
        mv "Pozostale/Przepisy/Lista zakupow 2023.txt" "Pozostale/Listy zakupow/Swieta 2023/"

        egrep  "[1-9][0-9]* kg" "Pozostale/Listy zakupow/Swieta ${1}/Lista zakupow ${1}.txt" > "Pozostale/Listy zakupow/Ciezkie.txt"

	
	head -$2 "Pozostale/Listy zakupow/Swieta ${1}/Lista zakupow ${1}.txt" > "Pozostale/Listy zakupow/Wybrane zakupy.txt"
	tail -$3 "Pozostale/Listy zakupow/Swieta ${1}/Lista zakupow ${1}.txt" >> "Pozostale/Listy zakupow/Wybrane zakupy.txt"
	
touch archiwum.tar.gz
tar -cvzf  "archiwum.tar.gz" .
   
else
        echo "arg 1 do dupy"
fi
