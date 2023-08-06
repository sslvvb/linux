#!/bin/bash

input_flag=1

if [ ! -n "$1" ]; then
  echo "Необходимо ввести параметр"
  input_flag=0
else
  way=$1
  last_symbol=${way: -1}
  if [ $# \> 1 ]; then
    echo "Параметр должен быть только один"
    input_flag=0
  elif [[ ! ($last_symbol = "/") ]]; then
    echo "Параметр должен заканчиваться знаком '/'"
    input_flag=0
  elif [ ! -d $1 ]; then
    echo "Параметр не является каталогом"
    input_flag=0
  fi
fi

if [ $input_flag == 0 ]; then
  exit 0
fi

start=$(date +%s)

cd $1

folders_number=$(find . -type d | wc -l)
folders_sort_path=$(du | sort -hr | head -6 | tail -5 | awk '{print $2}')
folders_sort_size=$(du -h | sort -hr | head -6 | tail -5 | awk '{print $1}')
fwl=($folders_sort_path)
fsl=($folders_sort_size)
files_number=$(find . -type f | wc -l)
files_conf=$(find . -type f -name "*.conf" | wc -l)
files_text=$(find . -type f -name "*.txt" | wc -l)
files_exec=$(find . -type f -name "*.exe" | wc -l)
files_log=$(find . -type f -name "*.log" | wc -l)
zip=$(find . -type f -name "*.zip" | wc -l)
rar=$(find . -type f -name "*.rar" | wc -l)
tar=$(find . -type f -name "*.tar" | wc -l)
gz=$(find . -type f -name "*.gz" | wc -l)
files_archive=$(( zip + rar + tar + gz ))
files_links=$(find . -type l | wc -l)
files_sort_path=$(find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print $2}')
files_sort_size=$(find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk '{print $1}')
files_sort_type=$(find $1 -type f -exec du -h {} + | sort -hr | head -10 | awk -F. '{print $NF}')
flp=($files_sort_path)
fls=($files_sort_size)
flt=($files_sort_type)
sum=$(md5sum $files_sort_path | awk '{print $1}')
s=($sum)

echo "Total number of folders (including all nested ones) = $folders_number"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
for (( i = 1; i < 6; i++ )); do
  printf "$i - "
  printf "${fwl[$i - 1]}/, "
  printf "${fsl[$i - 1]}\n"
done
echo "Total number of files = $files_number"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $files_conf"
echo "Text files = $files_text"
echo "Executable files = $files_exec"
echo "Log files (with the extension .log) = $files_log"
echo "Archive files = $files_archive"
echo "Symbolic links = $files_links"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
for (( i = 1; i < 11; i++ )); do
  printf "$i - "
  printf "${flp[$i - 1]}, "
  printf "${fls[$i - 1]}, "
  printf "${flt[$i - 1]}\n"
done
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
for (( i = 1; i < 11; i++ )); do
  printf "$i - "
  printf "${flp[$i - 1]}, "
  printf "${fls[$i - 1]}, "
  printf "${s[$i - 1]}\n"
done

end=$(date +%s)
time=$(($end - $start))
echo "Script execution time (in seconds) = $time"
