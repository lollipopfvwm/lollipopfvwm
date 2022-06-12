#!/bin/bash

source ~/.fvwm/settings.sh

modeicon=$(sh ~/.fvwm/scripts/mode.sh -i)
user=$(echo $USER)
up=$(uptime --pretty)
distro=$(uname -n)

if [[ $Theme = Dark ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
elif [[ $Theme = Light ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #FFFFFF"
topbarfontcolor="*SearchItemFore #212334"
elif [[ $Theme = Colors ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
elif [[ $Theme = Gradiente ]]; then
topbarcolor="*SearchColorset 13"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
fi

# Top Bar
cat << EOF

*SearchGeometry 0x0+350+10
$topbarcolor
*SearchFont         "xft:monofur for Powerline:Bold:size=12:antialias=True"
*SearchInputFont    "xft:monofur for Powerline:Bold:size=12:antialias=True"
*SearchButtonFont   "xft:monofur for Powerline:Bold:size=10:antialias=True"
# begin items
*SearchLine         center
*SearchText         ""
*SearchButton       restart " Menu"
*SearchCommand      Exec exec rofi -show drun
*SearchButton       restart " "
*SearchCommand      Exec exec \$[infostore.filler] \$(Search) &
*SearchButton       restart "  "
*SearchCommand      Exec exec \$[infostore.term] -e \$(Search) &
*SearchButton       restart "  "        ^M
*SearchInput        Search  60   ""
*SearchCommand Exec exec google-chrome-stable http://www.google.co.uk/search?q="\$(Search)"
*SearchButton       Restart   " Power" ^M
*SearchCommand Module FvwmButtons power
*SearchButton       mode   "$modeicon" ^M
*SearchCommand Exec sh ~/.fvwm/scripts/mode.sh -m; FvwmCommand Restart
*SearchText         ""
*SearchLine         center
EOF

