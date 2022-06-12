#!/usr/bin/env bash

###### Set kitty theme ######
function ktheme() {
kitty_dir=~/.config/kitty	

KittyCat() {
clear
cat << EOF

      (Miau)
\   /\ \/
 ) ( ') 
(  / )
 \(_)|

EOF
}

	kdark() {
		cat $kitty_dir/dark > $kitty_dir/kitty.conf
		kitty @ set-colors --all .config/kitty/kitty.conf > /dev/null
		KittyCat
	}

	klight() {
		cat $kitty_dir/light > $kitty_dir/kitty.conf
		kitty @ set-colors --all .config/kitty/kitty.conf > /dev/null
		KittyCat
	}


	case $1 in
		-d) kdark ;;
		-l) klight ;;
	esac
}

ttheme() {
	case $1 in
		-d) tmux source-file .tmux/themes/dark.conf ;;
		-l) tmux source-file .tmux/themes/light.conf ;;
	esac
}