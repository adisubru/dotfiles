#!/bin/bash 
picom &
nitrogen --restore &

dte(){
  dte="$(date +"%A, %B %d %l:%M%p")"
  echo -e "🕒 $dte"
}

hdd() {
  hdd="$(df -h | awk 'NR==4{print $3, $5}')"
  echo -e "💿 $hdd"
}

mem(){
  mem=`free | awk '/Mem/ {printf "%d MiB/%d MiB\n", $3 / 1024.0, $2 / 1024.0 }'`
  echo -e "🖪 $mem"
}

cpu(){
  read cpu a b c previdle rest < /proc/stat
  prevtotal=$((a+b+c+previdle))
  sleep 0.5
  read cpu a b c idle rest < /proc/stat
  total=$((a+b+c+idle))
  cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
  echo -e "💻 $cpu% cpu"
}

while true; do
     #xsetroot -name "$(cpu) | $(mem) | $(hdd) | $(dte)"
     xsetroot -name "$(cpu) | $(mem) | $(dte)"
     sleep 10s    # Update time every 10 second(s)
done &
