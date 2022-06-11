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
<p align="left"><strong>Color scheme.</strong></p>
<p>
Here we have the kitty terminal, using the light and dark LolliPop themes.
This theme is also applied in other applications, such as the neovim text editor, the alacritty terminal, tmux, gtk theme, icon theme and in Fvwm of course.
</p>

<p align="center">
	<img src="https://github.com/lollipopfvwm/lollipopfvwm/blob/main/images/terminais.png"
	align="left" width="400"/>
	<p>
	All the colors were passed to be fluent and pleasing to the eye, to be soft regardless of being light or dark, in the end a good color scheme is part of a good rice.
	<p>For more topics and news <a href="https://github.com/lollipopfvwm/gallery">visit the image gallery</a></p>
	</p>
	<br clear="left"/>
	<h2>----------------------------------------------------------------------------------------------</h2>
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