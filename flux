#!/bin/bash

# options to be displyed
option1="2000"
option2="2500"
option3="3000"
option4="4000"
option5="5000"
option6="6000"
option7="7000"
option8="8000"
option9="kill flux"

# Variable passed to rofi
options="$option1\n$option2\n$option3\n$option4\n$option5\n$option6\n$option7\n$option8\n$option9"

selected="$(echo -e "$options" | rofi -no-lazy-grab -dmenu -p "flux" -theme ~/dotfiles/rofi/rofi_no_icon_config.rasi "flux")"

case $selected in
    $option1)
        redshift -P -O 2000;;
    $option2)
        redshift -P -O 2500;;
    $option3)
        redshift -P -O 3000;;
	$option4)
		redshift -P -O 4000;;
	$option5)
		redshift -P -O 5000;;
    $option6)
        redshift -P -O 6000;;
    $option7)
        redshift -P -O 7000;;
    $option8)
        redshift -P -O 8000;;
    $option9)
        redshift -x;;
esac
