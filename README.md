<div align="justify">
<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/LolliPop.png"
	align="right" width="300"/>
	<h1>Welcome   <img src="https://cdn-icons-png.flaticon.com/512/5632/5632392.png" align="center" width="30"/></h1>
	<p>This is my personal Fvwm3 window manager configuration.</p>
	<p>Created and modified over many years, aiming to improve and simplify settings.</p>
	<p>
	This configuration is basically done in shell script, making use of variables to modify almost all Fvwm features. Just read the comments of each variable to know what will happen, all very simple and easy to understand.
	</p>
	<p>Below are some of the things that are being done for this configuration.</p>
	<br clear="right"/>
</p>

<h1>Dependencies</h1>

| Name | Description | Install |
| ------------- | ------------- | ------------- |
| xorg-xwd | thumbnails | sudo pacman -S xorg-xwd |
| imagemagick | thumbnails | sudo pacman -S imagemagick |
| picom | rounded edges and blur | yay - S picom-ibhagwan-git |
| stalonetray | system tray | sudo pacman -S stalonetray |


<h1>Used programs</h1>

| Name  | Description | Site | Install |
| ------------- | ------------- |------------- | ------------- |
| kitty  | terminal  | [kitty](https://sw.kovidgoyal.net/kitty/) | sudo pacman -S kitty |
| rofi  | menu  | [rofi](https://github.com/davatorium/rofi) | sudo pacman -S rofi |
| feh  | image view  | [feh](https://feh.finalrewind.org/) | sudo pacman -S feh |
| nemo  | file manager  | [nemo](https://github.com/linuxmint/nemo) | sudo pacman -S nemo |
| neovim  | cli editor  | [neovim](https://neovim.io/) | sudo pacman -S neovim |
| sublime  | text editor  | [sublime](https://www.sublimetext.com/) | yay -S sublime-text-4 |
| lxaappearance  | for themes  | [lxappearance](https://github.com/lxde/lxappearance) | sudo pacman -S lxappearance-gtk3 |
| zsh  | shell  | [zsh](https://www.zsh.org/) | sudo pacman -S zsh |

***additional settings of used programs you can find*** [here](https://github.com/lollipopfvwm/tool-settings)


<h1>Configuration highlights</h1>
<p align="left"></p>
<p>
Here we have the kitty terminal, using the light and dark LolliPop themes.
This theme is also applied in other applications, such as the neovim text editor, the alacritty terminal, tmux, gtk theme, icon theme and in Fvwm of course.
</p>

<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/terminais.png"
	align="left" width="400"/>
	<h1>Color scheme</h1>
	<p>
	All the colors were passed to be fluent and pleasing to the eye, to be soft regardless of being light or dark, in the end a good color scheme is part of a good rice.
	<p>For more topics and news <a href="https://github.com/lollipopfvwm/gallery">visit the image gallery</a></p>
	</p>
	<br clear="left"/>
	<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/desktop.png"
	align="right" width="500"/>
	<h1>Workspace</h1>
	<p>
	This configuration brings a very clean and simple desktop.
	</p>
	<p>
	It contains only a bar at the bottom, which can also be used in the upper part of the screen.
	</p>
	<p>
	It consists of 3 sectors, left, central and right.
	</p>
	<p>
	On the right side we have the applications that are open
	</p>
	<p>
	In the center we have the menu button, and an application launcher, which can be modified in the settings in ~/.fvwm/config
	</p>
	<p>
	On the right we have the system tray, date and time, a button to turn off and other operations and a button to show the desktop, which will minimize everything that is open.	
	</p>
	<br clear="right"/>
</p>
<h1>Simplified setup</h1>
<p>
Fvwm, despite being an excellent window manager, extremely versatile and customizable, has a configuration file that is very complicated to understand, due to its "Different" form.
</p>
<p>
Thinking about it, I thought about simplifying this, dividing the configurations, as many do, but I did this initially by writing the configurations in lua, but I saw that it was complicated, because lua is not native to linux, and it will be another dependency.
</p>
<p>
So I migrated to shell script, which is native "of course" and more familiar to those who use linux on a daily basis.
</p>
<p>
In this way the settings were divided into 4 files.
<p>=> <strong>config</strong> - the main file that will be loaded by Fvwm</p>
<p>=> <strong>settings.sh</strong> - this contains all the settings that can be changed by the user.</p>
<p>=> <strong>config.sh</strong> - this file reads the settings.sh file and is read by config, it doesn't need to be modified by the user, but it can in some specific cases.
And finally</p>
<p>=> <strong>widgets.sh</strong> - contains the top bar, and may contain other widgets that need interaction with shell commands or scripts. This can also be changed by the user, as long as he knows what he is doing.</p>
</p>
<h2>A little about settings.sh</h2>
<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/settings-apps-.png" align="right" width="500"/>
	<p>
	Note how simple the configuration is.
	Just change the variables, always reading the comments of each block.
	</p>
	<p>
	Assuming your favorite terminal is something other than kitty, just replace "kitty" with your favorite terminal.
	</p>
	<p>
	This applies to all programs in this block.
	</p>
	<p>
	<p>check the file <a href="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/fvwm/settings.sh">here</a></p>
	</p>
	<br clear="right"/>
</p>
<h1>Menu</h1>
<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/rofi.png" align="left" width="500"/>
	<p>
	This configuration brings up a custom menu, using rofi.
	</p>
	<p>
	It can be activated using the Super+m keys, or by clicking the menu button on the top bar.
	</p>
	<p>
	It has two color options, light and dark, to accompany the Fvwm theme. These colors automatically change when clicking on the theme icon in the top bar.
	</p>
	<p>
	<p>Nesta imagem o tema de icones ?? <a href="https://github.com/zayronxio/Zafiro-icons">Zafiro</a></p>
	</p>
	<br clear="right"/>
</p>
</p>

<h1>Fixes and bugs   <img src="https://cdn-icons.flaticon.com/png/512/4380/premium/4380548.png?token=exp=1655153683~hmac=a527c89e5b6ba14cf96b9ba390b0673f" align="center" width="40"/></h1>
<p>
The shutdown control panel still doesn't have a cancel button, to exit the panel you have to restart the system with Super+Shift+r.
</p>
<p>
Sometimes the keyboard shortcuts stop working, being necessary to click on an icon in the bar to return to normal, but this is a bug of Fvwm itself, which will be fixed in the future.
</p>
</div>