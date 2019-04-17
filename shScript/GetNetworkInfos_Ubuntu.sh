# on prend nos premieres mesures
PacketsReception=$(ifconfig -s | awk '{RX_OK += $3} END {print RX_OK}');
PacketsEmission=$(ifconfig -s | awk '{TX_OK += $7} END {print TX_OK}');

# on fait une pause de X secondes avant de prendre de nouvelles mesures
sleep 0.5

# on prend de nouvelles mesures
NewPacketsReception=$(ifconfig -s | awk '{RX_OK += $3} END {print RX_OK}');
NewPacketsEmission=$(ifconfig -s | awk '{TX_OK += $7} END {print TX_OK}');

# si notre difference de paquets est supérieur ou égale à 1000 alors il faut notifier l'utilisateur

DifferenceReception=$(($NewPacketsReception - $PacketsReception))
if [ $DifferenceReception -ge 1000 ]
then
	echo PacketsReception 1
else
	echo PacketsReception 0
fi

DifferenceEmission=$(($NewPacketsEmission - $PacketsEmission))
if [ $DifferenceEmission -ge 1000 ]
then
	echo PacketsEmission 1
else
	echo PacketsEmission 0
fi

# ne pas faire attention a ces echo, c'est au cas ou nous voulons recuperer les valeurs precises
echo OldPacketsReçus $PacketsReception
echo NewPacketsReçus $NewPacketsReception
echo OldPacketsEmission $PacketsEmission
echo NewPacketsEmission $NewPacketsEmission
