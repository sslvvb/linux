#!/bin/bash

export one=$1
export two=$2
export three=$3
export four=$4
export five=$5

result=1
while [[ $result != 0 ]]; do
  if [[ -z $one ]] || [[ -z $two ]] || [[ -z $three ]] || [[ -z $four ]]; then
  echo "Недостаточное количество агрументов"
  elif [[ -n $five ]]; then
  echo "Избыточное количество агрументов"
  elif [[ $one != [1-6] ]] || [[ $two != [1-6] ]] || [[ $three != [1-6] ]] || [[ $four != [1-6] ]] || [[ $one == $two ]] || [[ $three == $four ]]; then
  echo "Неверные значения аргументов"
  else
  result=0
  fi

  if [[ $result != 0 ]]; then
  echo "Хотите ввести новые значения? (Y/N)"
  read a
    if [[ ($a = "y") || ($a = "Y") ]]; then
    read one two three four five
    else
    exit 0
    fi
  fi
done

export hostname=$(hostname)
export timezone=$(timedatectl | grep Time | awk '{print $3, $4, $5}')
export user=$(whoami)
export os=$(lsb_release -a | grep Description | awk '{print $2, $3, $4}')
export date=$(date | awk '{print $2, $3, $4, $5}')
export uptime=$(uptime -p)
export uptime_sec=$(cat /proc/uptime | awk '{sec=$1} END {printf "%.0f", sec}')
export ip=$(hostname -I | awk '{print $1}')
export mask=$(ifconfig | grep broadcast | awk '{print $4}')
export gateway=$(ip route | grep default | awk '{print $3}')
export ram_total=$(free | grep Mem: | awk '{total=$2/1000000} END {printf "%.3f Gb", total}')
export ram_used=$(free | grep Mem: | awk '{used=$3/1000000} END {printf "%.3f Gb", used}')
export ram_free=$(free | grep Mem: | awk '{free=$4/1000000} END {printf "%.3f Gb", free}')
export space_root=$(df / | grep / | awk '{printf "%.2f MB", $2/1024}')
export space_root_used=$(df / | grep / | awk '{printf "%.2f MB", $3/1024}')
export space_root_free=$(df / | grep / | awk '{printf "%.2f MB", $4/1024}')

export clear="\033[0m"

./echo.sh
