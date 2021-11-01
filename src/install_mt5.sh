wine mt5setup.exe &

sleep 10
xdotool key Tab
sleep 1
xdotool key Up
sleep 1
xdotool key Return


echo 'initializing mt5 install'

export COMMON='/headless/.wine/drive_c/Program Files/MetaTrader 5 Strategy Tester/Tester/Manager/common.ini'
while :
do
  if test -f "$COMMON"
  then
    break
  fi
  sleep 2
done

echo 'waiting for mt5 to finish install'

sleep 300

echo 'done'
