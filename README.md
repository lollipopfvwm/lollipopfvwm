<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/LolliPop.png"
	align="right" width="300"/>
	<h1>Welcome</h1>
	<p>This is my personal Fvwm3 window manager configuration.</p>
	<p>Created and modified over many years, aiming to improve and simplify settings.</p>
	<p>
	This configuration is basically done in shell script, making use of variables to modify almost all Fvwm features. Just read the comments of each variable to know what will happen, all very simple and easy to understand.
	</p>
	<p>Below are some of the things that are being done for this configuration.</p>
	<br clear="right"/>
</p>
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
	This customization has a very simple and useful workspace, containing a bar at the top, an underwater dock and a clock on the right.
	</p>
	<p>
	The dock is a simple dock, like any other, it just launches pre-configured applications in the Fvwm configuration file, the watch too, does what it should do, "show the time".
	</p>
	<p>
	The big difference is the top bar, because it does things that no other bar in window managers does. In the center of the bar there is a text entry, which has <strong>3 utilities</strong>, open locations with the file manager, execute command in the terminal and do internet searches.	
	</p>
	<p>
	For example, type <strong>Desktop</strong> or <strong>.config</strong> or <strong>/etx/xdg</strong> and click on the folder icon, then the file manager will open in the folder indicated in the text input. From terminal commands and click on the terminal icon, for example <strong>sudo pacman -Syu</strong>, the terminal will open and perform the system update, or type <strong>nvim .fvwm/config</strong> then the terminal will open the text editor in the indicated file. For internet searches, just type the text and press Enter or click on the globe.	
	</p>
	<p>
	And finally the menu button that opens the custom rofi menu for this WM.
	And the button to change from light to dark.
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
	</p>
	<br clear="right"/>
</p>
```shell
#!/bin/bash
echo "oi"
```
