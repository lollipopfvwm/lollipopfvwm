#!/usr/bin/env bash

source ~/.fvwm/settings.sh

cat << EOF
DesktopName 0 0
DesktopName 1 1
DesktopName 2 2
DesktopName 3 3
DesktopSize 1x4

EOF

cat << EOF
Silent Key 1 A 4 GotoDesk 0 0
Silent Key 2 A 4 GotoDesk 0 1
Silent Key 3 A 4 GotoDesk 0 2
Silent Key 4 A 4 GotoDesk 0 3
Silent Key 5 A 4 GotoDesk 0 4
Silent Key 6 A 4 GotoDesk 0 5
Silent Key 7 A 4 GotoDesk 0 6
Silent Key 8 A 4 GotoDesk 0 7
Silent Key 9 A 4 GotoDesk 0 8
Silent Key 0 A 4 GotoDesk 0 9

EOF

cat << EOF
Key 1 A 4S MovetoDesk 0 0
Key 2 A 4S MovetoDesk 0 1
Key 3 A 4S MovetoDesk 0 2
Key 4 A 4S MovetoDesk 0 3
Key 5 A 4S MovetoDesk 0 4
Key 6 A 4S MovetoDesk 0 5
Key 7 A 4S MovetoDesk 0 6
Key 8 A 4S MovetoDesk 0 7
Key 9 A 4S MovetoDesk 0 8
Key 0 A 4S MovetoDesk 0 9

EOF

cat << EOF
InfoStoreAdd term $Term
InfoStoreAdd browser $Browser
InfoStoreAdd filler $Filler
InfoStoreAdd music $Music
InfoStoreAdd editor $Editor
InfoStoreAdd chat $Chat
InfoStoreAdd menu "$Menu"

Key Return A 4  Exec exec \$[infostore.term]
Key c A 4 Exec exec \$[infostore.browser]
Key n A 4 Exec exec \$[infostore.filler]
Key s A 4 Exec exec \$[infostore.music]
Key v A 4 Exec exec \$[infostore.editor]
Key t A 4 Exec exec \$[infostore.chat]
Key m A 4 Exec exec \$[infostore.menu]
Key u A 4 Exec exec ulauncher

EOF

cat << EOF
Key r A 4S Restart
Key e A 4S Quit
Key q A 4 Close
Key space WT 4 Maximize
Silent Key Tab A M WindowList Root c c NoDeskSort, NoGeometry, SelectOnRelease Meta_L
Key f A 4 FuncMaximizeFullScreen


DestroyFunc TileLeft
AddToFunc TileLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileRight
AddToFunc TileRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 +0

DestroyFunc TileTop
AddToFunc TileTop
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileBottom
AddToFunc TileBottom
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 -0

DestroyFunc TileTopLeft
AddToFunc TileTopLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileTopRight
AddToFunc TileTopRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 +0

DestroyFunc TileBottomLeft
AddToFunc TileBottomLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 -0

DestroyFunc TileBottomRight
AddToFunc TileBottomRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 -0

Key Left A 4S TileLeft
Key Right A 4S TileRight
Key Up A 4S TileTop
Key Down A 4S TileBottom

Key Left A 4 TileBottomLeft
Key Right A 4 TileTopRight
Key Up A 4 TileTopLeft
Key Down A 4 TileBottomRight

EOF

# Volume
cat << EOF
Key XF86AudioRaiseVolume A A Exec amixer set Master $Up
Key XF86AudioLowerVolume A A Exec amixer set Master $Down
Key XF86AudioMute A A Exec amixer set Master toggle

EOF

# Colors
cat << EOF
ColorSet 0 fg $lf, bg $db, sh $db, hi $db, Plain, NoShape
ColorSet 1 fg $db, bg $lb, sh $lb, hi $lb, Plain, NoShape
ColorSet 2 fg $lf, bg $rd, sh $rd, hi $rd, Plain, NoShape
ColorSet 3 fg $lf, bg $gr, sh $gr, hi $gr, Plain, NoShape
ColorSet 4 fg $lf, bg $be, sh $be, hi $be, Plain, NoShape
ColorSet 5 fg $db, bg $yw, sh $yw, hi $yw, Plain, NoShape
ColorSet 6 fg $lb, bg $pr, sh $pr, hi $pr, Plain, NoShape
ColorSet 7 fg $db, bg $cy, sh $cy, hi $cy, Plain, NoShape
ColorSet 8 fg $lf, bg $mg, sh $mg, hi $mg, Plain, NoShape


ColorSet 9 HGradient $gradient

ColorSet 10 fg $lf, bg $rtd, sh $rtd, hi $rtd, Plain, NoShape
ColorSet 11 fg $lf, bg $rtl, sh $rtl, hi $rtl, Plain, NoShape

Colorset 12 Transparent buffer,$alpha , RootTransparent buffer
Colorset 13 Transparent buffer,$alpha1 , RootTransparent buffer


EOF

# Colors of widgets
cat << EOF
ColorSet 14 fg $wd, bg $wd, sh $wd, hi $wd, Plain, NoShape
ColorSet 15 fg $wl, bg $wl, sh $wl, hi $wl, Plain, NoShape

EOF


if [[ $Theme = Dark ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "0"
InfoStoreAdd Inactive "0"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "14"

EOF
elif [[ $Theme = Light ]]; then
cat << EOF
InfoStoreAdd Base "1"
InfoStoreAdd Active "1"
InfoStoreAdd Inactive "1"
InfoStoreAdd BorderActive "1"
InfoStoreAdd BorderInactive "1"
InfoStoreAdd Highlight "4"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "15"

EOF

elif [[ $Theme = Colors ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "8"
InfoStoreAdd Inactive "6"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "14"

EOF

elif [[ $Theme = Gradient ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "9"
InfoStoreAdd Inactive "9"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "14"

EOF
fi

# Window Title
if [[ $Title = 'yes' ]]; then
	echo -e "Style * !Icon, Title\n"
elif [[ $Title = 'no' ]]; then
	echo -e "Style * !Icon, !Title\n"
else
	echo -e "Style * !Icon, Title\n"
fi

# Windows
# Window icon theme
echo -e "InfoStoreAdd Buttonstyle $IconStyle\n"
echo -e "InfoStoreAdd ButtonSize :${ButtonSize}x${ButtonSize}-0-0\n"

# Title bar position
if [[ $ButtonsOrientation == Left ]]; then
	B1=1
	B2=3
	B3=5
	echo "InfoStoreAdd button1 $B1"
	echo "InfoStoreAdd button2 $B2"	
	echo "InfoStoreAdd button3 $B3"
	echo "InfoStoreAdd WindowName RightJustified"
elif [[ $ButtonsOrientation == Right ]]; then
	B1=2
	B2=4
	B3=6
	echo "InfoStoreAdd button1 $B1"
	echo "InfoStoreAdd button2 $B2"
	echo "InfoStoreAdd button3 $B3"
	echo "InfoStoreAdd WindowName LeftJustified"
fi


# Title bar, borders and fonts
cat << EOF

InfoStoreAdd TitleSize $TitleSize
InfoStoreAdd FonteSize $FontSize
InfoStoreAdd BorderSize $BorderSize
InfoStoreAdd DefaultFonte ${Font}:${FontStyle}
InfoStoreAdd TitlePosition TitleAt${TitlePosition}

EOF

# Desktops and monitors
cat << EOF
DesktopConfiguration $DeskType
EWMHBAseStruts screen $M1 $LM1 $RM1 $TM1 $BM1
EWMHBAseStruts screen $M2 $LM2 $RM2 $TM2 $BM2
EOF

# Bar

if [[ $BarPosition == Bottom ]]; then
	echo "InfoStoreAdd BarPosition +10+842"
elif [[ $BarPosition == Top ]]; then
	echo "InfoStoreAdd BarPosition +10+10"
fi

cat << EOF
InfoStoreAdd BarSize $BarHeight
InfoStoreAdd BarIconSize $BarIconSize
InfoStoreAdd BarIconSizeHover $BarIconSizeHover
InfoStoreAdd IconPadding $IconPadding
EOF