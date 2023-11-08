#!/bin/bash

FLAG_COLOR_DEFAULT=0

source configuration.cfg

column1_background=${column1_background:=${default_column1_background}}
column1_font_color=${column1_font_color:=${default_column1_font_color}}
column2_background=${column2_background:=${default_column2_background}}
column2_font_color=${column2_font_color:=${default_column2_font_color}}

# checking input  param
. ./check_input.sh

# color func
. ./color.sh

# output result
. ./output.sh

#exit 0