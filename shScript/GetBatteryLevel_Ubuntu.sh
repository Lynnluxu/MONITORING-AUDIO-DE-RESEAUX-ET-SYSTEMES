BatteryLevel=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk -F" " 'NR==20 {print $2}');

echo $BatteryLevel | sed s/.$// # sed permet de supprimer le dernier caractere, donc le pourcentage pour bien avoir un int
