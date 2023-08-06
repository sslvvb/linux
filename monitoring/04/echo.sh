#!/bin/bash

if [[ "$one" = "1" ]]; then
  column1_background="107"
  name_background="(white)"
elif [[ "$one" == "2" ]]; then
  column1_background="41"
  name_background="(red)"
elif [[ "$one" == "3" ]]; then
  column1_background="42"
  name_background="(green)"
elif [[ "$one" == "4" ]]; then
  column1_background="44"
  name_background="(blue)"
elif [[ "$one" == "5" ]]; then
  column1_background="45"
  name_background="(purple)"
elif [[ "$one" == "6" ]]; then
  column1_background="49"
  name_background="(black)"
fi

if [[ "$two" = "1" ]]; then
  column1_font_color="37m"
  name_text="(white)"
elif [[ "$two" == "2" ]]; then
  column1_font_color="31m"
  name_text="(red)"
elif [[ "$two" == "3" ]]; then
  column1_font_color="32m"
  name_text="(green)"
elif [[ "$two" == "4" ]]; then
  column1_font_color="34m"
  name_text="(blue)"
elif [[ "$two" == "5" ]]; then
  column1_font_color="35m"
  name_text="(purple)"
elif [[ "$two" == "6" ]]; then
  column1_font_color="30m"
  name_text="(black)"
fi

if [[ "$three" = "1" ]]; then
  column2_background="107"
  value_background="(white)"
elif [[ "$three" == "2" ]]; then
  column2_background="41"
  value_background="(red)"
elif [[ "$three" == "3" ]]; then
  column2_background="42"
  value_background="(green)"
elif [[ "$three" == "4" ]]; then
  column2_background="44"
  value_background="(blue)"
elif [[ "$three" == "5" ]]; then
  column2_background="45"
  value_background="(purple)"
elif [[ "$three" == "6" ]]; then
  column2_background="49"
  value_background="(black)"
fi

if [[ "$four" = "1" ]]; then
  column2_font_color="37m"
  value_text="(white)"
elif [[ "$four" == "2" ]]; then
  column2_font_color="31m"
  value_text="(red)"
elif [[ "$four" == "3" ]]; then
  column2_font_color="32m"
  value_text="(green)"
elif [[ "$four" == "4" ]]; then
  column2_font_color="34m"
  value_text="(blue)"
elif [[ "$four" == "5" ]]; then
  column2_font_color="35m"
  value_text="(purple)"
elif [[ "$four" == "6" ]]; then
  column2_font_color="30m"
  value_text="(black)"
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

if [[ $flag = 1 ]]; then
  echo
  echo "Column 1 background = default (black)"
  echo "Column 1 font color = default (white)"
  echo "Column 2 background = default (red)"
  echo "Column 2 font color = default (black)"
else
  echo
  echo "Column 1 background = $one $name_background"
  echo "Column 1 font color = $two $name_text"
  echo "Column 2 background = $three $value_background"
  echo "Column 2 font color = $four $value_text"
fi
