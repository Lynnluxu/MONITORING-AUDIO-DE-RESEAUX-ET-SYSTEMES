


# on commence par creer une variable qui contiendra le chemin d'acces vers le fichier/dossier qu'on souhaite supprimer
path=${1?Error: pas de chemin}

# on deplace ce qu'on veut supprimer dans la corbeille
mv $path ~/.local/share/Trash/files
