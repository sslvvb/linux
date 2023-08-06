#!/bin/bash

export hostname=$(hostname)
export timezone=$(timedatectl | grep Time | awk '{print $3, $4, $5}')
export user=$(whoami)
export os=$(lsb_release -a | grep Description | awk '{print $2, $3, $4}') # sudo apt-get install lsb-core
export date=$(date | awk '{print $2, $3, $4, $5}')
export uptime=$(uptime -p)
export uptime_sec=$(cat /proc/uptime | awk '{sec=$1} END {printf "%.0f", sec}')
export ip=$(hostname -I | awk '{print $1}')
export mask=$(ifconfig | grep broadcast | awk '{print $4}') # sudo apt install net-tools
export gateway=$(ip route | grep default | awk '{print $3}')
export ram_total=$(free | grep Mem: | awk '{total=$2/1000000} END {printf "%.3f Gb", total}')
export ram_used=$(free | grep Mem: | awk '{used=$3/1000000} END {printf "%.3f Gb", used}')
export ram_free=$(free | grep Mem: | awk '{free=$4/1000000} END {printf "%.3f Gb", free}')
export space_root=$(df / | grep / | awk '{printf "%.2f MB", $2/1024}') # df -BM /
export space_root_used=$(df / | grep / | awk '{printf "%.2f MB", $3/1024}')
export space_root_free=$(df / | grep / | awk '{printf "%.2f MB", $4/1024}')

./echo.sh

echo "Записать данные в файл? (Y/N)"
read a
if [[ ($a = "y") || ($a = "Y") ]];
then
sh echo.sh >> $(date +%d_%m_%y_%H_%M_%S).status
fi
