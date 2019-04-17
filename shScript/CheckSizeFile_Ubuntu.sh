


# on commence par creer une variable qui contiendra le chemin d'acces vers le fichier du quel on souhaite recuperer la taille
path_fichier=${1?Error: pas de chemin}

# la commande qui nous permet d'avoir l'info (on la divise par 1 million pour avoir le resultat en Mb
taille_fichier=$(ls -l $path_fichier | cut -d " " -f5);

# on regarde la taille du fichier, si celui-ci fait moins d'1 Mb, on recupere le resultat Kb
if [ $taille_fichier -lt 1000000 ]
then
	echo "le fichier fait moins d'1 Mb"
else
	taille_fichier=$(($taille_fichier/1000000));
	echo $taille_fichier
fi
