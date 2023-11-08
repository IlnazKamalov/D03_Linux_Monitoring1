#!/bin/bash

color_str=(
    $column1_background
    $column1_font_color
    $column2_background
    $column2_font_color
)

# check bo param else color default
if [[ $# -gt 0 ]]
then
  echo "Too many parameters! The script must be run without parameters. Default colors are used."
  FLAG_COLOR_DEFAULT=1
  column1_background=${default_column1_background}
  column1_font_color=${default_column1_font_color}
  column2_background=${default_column2_background}
  column2_font_color=${default_column2_font_color}
fi

# only digit
for i in "${!color_str[@]}"
do 
  if [[ ${color_str[$i]} != *[0-9]* ]]
  then
    echo "Wrong parameter! Parameter must contain only letters."
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done

# check only 0-6 digit
for i in "${!color_str[@]}"
do 
  if [[ (${color_str[$i]} -gt 6) || (${color_str[$i]} -lt 0) ]]
  then
    echo "Wrong color number! All parameters must be digits from 0 to 6."
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done

# the first & second pair of parameters do not match
for i in "${!color_str[@]}"
do 
  if [[ (($column1_background -eq $column1_font_color) && ($column1_background -ne 0))\
  || (($column2_background -eq $column2_font_color) && ($column2_background -ne 0)) ]]
  then
    echo "Text and background color match!"
    FLAG_COLOR_DEFAULT=1
    column1_background=${default_column1_background}
    column1_font_color=${default_column1_font_color}
    column2_background=${default_column2_background}
    column2_font_color=${default_column2_font_color}
  fi
done
