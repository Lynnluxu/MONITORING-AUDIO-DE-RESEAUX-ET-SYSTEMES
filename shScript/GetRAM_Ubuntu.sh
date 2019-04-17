MaxRAM=$(free -m | awk -F" " 'NR==2 {print $2}');
UsedRAM=$(free -m | awk -F" " 'NR==2 {print $3}');

echo MaxRAM $MaxRAM
echo UsedRAM $UsedRAM
