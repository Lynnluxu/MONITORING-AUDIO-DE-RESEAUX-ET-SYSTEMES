# on prend les premières mesures
OldUser=$(cat /proc/stat | awk -F" " '/cpu / {print $2}');
OldNice=$(cat /proc/stat | awk -F" " '/cpu / {print $3}');
OldSystem=$(cat /proc/stat | awk -F" " '/cpu / {print $4}');
OldIdle=$(cat /proc/stat | awk -F" " '/cpu / {print $5}');
OldIowait=$(cat /proc/stat | awk -F" " '/cpu / {print $6}');
OldIrq=$(cat /proc/stat | awk -F" " '/cpu / {print $7}');
OldSoftirq=$(cat /proc/stat | awk -F" " '/cpu / {print $8}');
OldSteal=$(cat /proc/stat | awk -F" " '/cpu / {print $9}');

OldTotalCPUtimeSinceBoot=$(($OldUser+$OldNice+$OldSystem+$OldIdle+$OldIowait+$OldIrq+$OldSoftirq+$OldSteal))
OldTotalCPUidleTimeSinceBoot=$(($OldIdle+$OldIowait))
OldTotalCPUusageTimeSinceBoot=$(($OldTotalCPUtimeSinceBoot-$OldTotalCPUidleTimeSinceBoot))

# pause d'une demi-seconde avant de prendre les nouvelles mesures
sleep .5

# on prend les nouvelles mesures
NewUser=$(cat /proc/stat | awk -F" " '/cpu / {print $2}');
NewNice=$(cat /proc/stat | awk -F" " '/cpu / {print $3}');
NewSystem=$(cat /proc/stat | awk -F" " '/cpu / {print $4}');
NewIdle=$(cat /proc/stat | awk -F" " '/cpu / {print $5}');
NewIowait=$(cat /proc/stat | awk -F" " '/cpu / {print $6}');
NewIrq=$(cat /proc/stat | awk -F" " '/cpu / {print $7}');
NewSoftirq=$(cat /proc/stat | awk -F" " '/cpu / {print $8}');
NewSteal=$(cat /proc/stat | awk -F" " '/cpu / {print $9}');

NewTotalCPUtimeSinceBoot=$(($NewUser+$NewNice+$NewSystem+$NewIdle+$NewIowait+$NewIrq+$NewSoftirq+$NewSteal))
NewTotalCPUidleTimeSinceBoot=$(($NewIdle+$NewIowait))
NewTotalCPUusageTimeSinceBoot=$(($NewTotalCPUtimeSinceBoot-$NewTotalCPUidleTimeSinceBoot))

# on affiche le pourcentage à l'aide de la commande BC pour pouvoir afficher un chiffre de type float
TotalCPUpercentage=$(echo "scale=5; (($NewTotalCPUusageTimeSinceBoot-$OldTotalCPUusageTimeSinceBoot)/($NewTotalCPUtimeSinceBoot-$OldTotalCPUtimeSinceBoot)*100)" | bc)

echo $TotalCPUpercentage
