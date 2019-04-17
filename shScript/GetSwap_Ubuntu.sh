MaxSwap=$(free -m | awk -F" " 'NR==3 {print $2}');
UsedSwap=$(free -m | awk -F" " 'NR==3 {print $3}');

echo MaxSwap $MaxSwap
echo UsedSwap $UsedSwap
