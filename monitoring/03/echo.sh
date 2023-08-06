#!/bin/bash

if [[ "$one" = "1" ]]; then
  column1_background="107"
elif [[ "$one" == "2" ]]; then
  column1_background="41"
elif [[ "$one" == "3" ]]; then
  column1_background="42"
elif [[ "$one" == "4" ]]; then
  column1_background="44"
elif [[ "$one" == "5" ]]; then
  column1_background="45"
elif [[ "$one" == "6" ]]; then
  column1_background="49"
fi

if [[ "$two" = "1" ]]; then
  column1_font_color="37m"
elif [[ "$two" == "2" ]]; then
  column1_font_color="31m"
elif [[ "$two" == "3" ]]; then
  column1_font_color="32m"
elif [[ "$two" == "4" ]]; then
  column1_font_color="34m"
elif [[ "$two" == "5" ]]; then
  column1_font_color="35m"
elif [[ "$two" == "6" ]]; then
  column1_font_color="30m"
fi

if [[ "$three" = "1" ]]; then
  column2_background="107"
elif [[ "$three" == "2" ]]; then
  column2_background="41"
elif [[ "$three" == "3" ]]; then
  column2_background="42"
elif [[ "$three" == "4" ]]; then
  column2_background="44"
elif [[ "$three" == "5" ]]; then
  column2_background="45"
elif [[ "$three" == "6" ]]; then
  column2_background="49"
fi

if [[ "$four" = "1" ]]; then
  column2_font_color="37m"
elif [[ "$four" == "2" ]]; then
  column2_font_color="31m"
elif [[ "$four" == "3" ]]; then
  column2_font_color="32m"
elif [[ "$four" == "4" ]]; then
  column2_font_color="34m"
elif [[ "$four" == "5" ]]; then
  column2_font_color="35m"
elif [[ "$four" == "6" ]]; then
  column2_font_color="30m"
fi

echo -e "\e[0;$column1_background;$column1_font_color""HOSTNAME""$clear" = "\e[0;$column2_background;$column2_font_color"$hostname"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"TIMEZONE"$clear" = "\e[0;$column2_background;$column2_font_color"$timezone"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"USER"$clear" = "\e[0;$column2_background;$column2_font_color"$user"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"OS"$clear" = "\e[0;$column2_background;$column2_font_color"$os"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"DATE"$clear" = "\e[0;$column2_background;$column2_font_color"$date"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"UPTIME"$clear" = "\e[0;$column2_background;$column2_font_color"$uptime"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"UPTIME_SEC"$clear" = "\e[0;$column2_background;$column2_font_color"$uptime_sec"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"IP"$clear" = "\e[0;$column2_background;$column2_font_color"$ip "$clear"
echo -e "\e[0;$column1_background;$column1_font_color"MASK"$clear" = "\e[0;$column2_background;$column2_font_color"$mask"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"GATEWAY"$clear" = "\e[0;$column2_background;$column2_font_color"$gateway"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"RAM_TOTAL"$clear" = "\e[0;$column2_background;$column2_font_color"$ram_total"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"RAM_USED"$clear" = "\e[0;$column2_background;$column2_font_color"$ram_used"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"RAM_FREE"$clear" = "\e[0;$column2_background;$column2_font_color"$ram_free"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"SPACE_ROOT"$clear" = "\e[0;$column2_background;$column2_font_color"$space_root"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"SPACE_ROOT_USED"$clear" = "\e[0;$column2_background;$column2_font_color"$space_root_used"$clear"
echo -e "\e[0;$column1_background;$column1_font_color"SPACE_ROOT_FREE"$clear" = "\e[0;$column2_background;$column2_font_color"$space_root_free"$clear"
