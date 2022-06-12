#!/usr/bin/env bash

#--------------------------------------------
# Programs that will be used in the system
# can be changed here.
# If any program is substituted in the system,
# should also be changed here
#--------------------------------------------
Term='kitty'
Browser='google-chrome-stable'
Filler='nemo'
Editor='subl'
Chat='telegram-desktop'
Menu="rofi -theme ~/.config/rofi/config.rasi -show drun"

# Volume
Up='10%+'
Down='10%-'

#--------------------------------------------
# Defines the colors that will be used by Fvwm.
# You can change these colors as you like,
# to come up with different combinations.
#--------------------------------------------
# Colors for dark theme
db='#0f1015'		# Dark background
wd='#0f1015' 		# Dark color for widgets

# Cores para o tema claro
lb='#EBF5F7'		# Light background
wl='#EBF5F7' 		# Light color for widgets

# Cores para as fontes
df='#212121'		# Dark font
lf='#F5F5F5'		# Light foreground

# Cores para temas coloridos
rd='#ff77ba'		# Red
gr='#99ffab' 		# Green
be='#118ab2'		# Blue
yw='#ffd166'		# Yellow
pr='#9a99ff'		# Purple
cy='#00b4d8'		# Cyan

# Gradiente 
gradient='1000 2 #c8b6ff 50 #b8c0ff 50 #bbd0ff 50'

# Transparent
alpha="fg #FFFFFF, bg average, sh #1c1d21, hi #1c1d21, Tint #FFFFFF 50"

#--------------------------------------------
# Select which theme to use.
# The options are:
# => dark
# => Light
# => Colors
# => Gradient
#--------------------------------------------
Theme="Dark"

#--------------------------------------------
# Select the icon theme that will be used
# in the title bar.
#--------------------------------------------
# Heads up! 
# When changing the theme of icons, you may need to 
# change the side of the title bar,
# as well as its size.
#--------------------------------------------
# => Candy
# => Colors
# => CircleWhite
# => CircleDark
# => CircleYellow
# => Mist
# => EdgeLeft => Use Title Left
# => EdgeRight => Use Title Right
# => LeftRounded => Use Title Left
#--------------------------------------------
IconStyle="Mist"

#--------------------------------------------
# Select whether or not Fvwm should use forward slashes
# on windows.
# => yes
# => not
#--------------------------------------------
Title="yes"

#--------------------------------------------
# Enter the size of the title bars
# of windows. There are no minimum limits
# or maximums for that, but yes
# recommended values
# => 20 Minimum
# => 60 Max
# => 45 Default
#--------------------------------------------
TitleSize=50

#--------------------------------------------
# Set the size of window icons
#--------------------------------------------
ButtonSize=18

#--------------------------------------------
# Set the size of window borders
#--------------------------------------------
BorderSize=0

#--------------------------------------------
# Select the type and size of the font that will be
# used by Fvwm, in menus and title bars.
# The types are:
# => Regular
# => Bold
# => Italic
#--------------------------------------------
Font="monofur for Powerline"
FontStyle="Bold"
FontSize=8

#--------------------------------------------
# Indicate in which position the title bar
# will stay in relation to windows
# => top/Top
# => right/Right
# => bottom/Bottom
# => left/Left
#--------------------------------------------
TitlePosition="top"

#--------------------------------------------
# On which side of the title bar are the buttons
# must be located
# => Left
# => Right
#--------------------------------------------
ButtonsOrientation="Left"

#------------------------------------------------ -----------------------------------------------
# Desktop Settings Fvwm.
# In this part of the settings it is possible to set the as Fvwm,
# will handle the monitors
#
# Fvwm has 3 ways to handle monitors.
# => global
#	The standard. This means that all screens show the same workspaces/pages.
#
# => per-monitor
# Each monitor has its own virtual desktop/pages.
# For this mode it is recommended that FvwmPager is set to
# use monitor configuration option, so only windows
# specific monitor are shown.
#
# => shared
# Virtual desktops are shared across all monitors and each
# monitor shows a single desktop at a time. If a monitor switches to a
# desktop being viewed by another, the two monitors swap what
# desktop they are viewing. This is similar to how Xmonad or Herbsflutwm
# handle tables. This mode only works with two or more monitors.
#------------------------------------------------ -----------------------------------------------
# Type
DeskType="per-monitor"

# Name of connected monitors
M1="VGA1"
M2="HDMI1"
M3=""
# Distance from window edges to screen edges
# Monitor 1
LM1=10 	# Left
RM1=10 	# Right
TM1=10 	# Top
BM1=10 	# Bottom

# Monitor 2
LM2=5 	# Left
RM2=5 	# Right
TM2=5 	# Top
BM2=5 	# Bottom

# Monitor 3
LM3=10 	# Left
RM3=10 	# Right
TM3=10 	# Top
BM3=10 	# Bottom

