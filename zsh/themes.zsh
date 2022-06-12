# Colors
white="#F5F5F5"
black="#212121"
red="#dc9191"
blue="#9a99ff"
green="#99ffab"
yellow="#f2cc8f"
magenta="#ff77ba"

# Randon colors
rd="%B%F{$((RANDOM % 100))}"

# Simbols
git1=""
git2=""
git3=""
git4=""
git5=""
user1=""
user2=""
user3=""
user4=""
dir1=""
dir2=""
dir3=""
dir4=""
ind1=""
ind2=""
ind3=""
ind4=""
arrow1=""
arrow2=""
arrow3=""
arrow4=""

# Prompts
fresk() {
	# git status
	git_status() {
		modfy=$(git status -s > /dev/null 2>&1 | wc -l)
		if git rev-parse --git-dir > /dev/null 2>&1; then
			if [[ $modfy -eq 0 ]]; then
				echo -ne "%F{$green}$ind2 %F{blue}modified%f"
			else
				echo -ne "%F{$red}$ind3 %F{blue}modified%f"
			fi
		else
			echo -ne "%(4~|%-1~/.../%2~|%~)"
		fi
	}
	# git master
	fresk_prompt() {
		if git rev-parse --git-dir > /dev/null 2>&1; then
			echo -ne "%F{$yellow}$git3%F{$magenta} Master %f$arrow3 %f"
		else
			echo -ne "%F{$magenta}$arrow3 %f"
		fi
	}
	PS1='$(fresk_prompt)'
	RPS1='$(git_status)'
}

simple() {
	simple_prompt() {
		echo -ne "$B$rd$arrow3 %f"
	}
	PS1='$(simple_prompt)'
}

nutel() {
	dir_size() {
		read size name <<< $(du -hs `pwd` 2> /dev/null)
		echo -ne "%F{$green}$size %F{$magenta}$name"
	}

	git_status() {
		if git rev-parse --git-dir > /dev/null 2>&1; then
			echo "%B$git3%F{$magenta} Masten %F{$yellow}$arrow3 %f"
		else
			echo "%B$user2 %F{$magenta} %n %F{$yellow}$arrow3 %f"
		fi
	}
	PS1='$(git_status)'
	RPS1='$(dir_size)'
}