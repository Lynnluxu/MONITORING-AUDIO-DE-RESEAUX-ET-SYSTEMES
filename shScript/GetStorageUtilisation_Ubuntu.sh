StorageUsed=$(df | awk -F" " 'NR==4 {print $5}');

echo $StorageUsed | sed s/.$// # sed permet de supprimer le dernier caractere, donc le pourcentage pour bien avoir un int
