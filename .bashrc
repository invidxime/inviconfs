# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export VISUAL=nvim
export EDITOR="$VISUAL"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

function update { 
	sudo dnf update
	flatpak update
}

function arkenfox {
	cd ~/.mozilla/firefox/hpcahx5f.main
	./updater.sh
	./prefsCleaner.sh
	cd ~/.mozilla/firefox/4j4nyy3m.work
	./updater.sh
	./prefsCleaner.sh
	cd ~/.mozilla/firefox/e9mb2y0f.roblox
	./updater.sh
	./prefsCleaner.sh
	cd ~/.mozilla/firefox/o0sz3oe8.geoguessr
	./updater.sh
	./prefsCleaner.sh
	cd
}

unset rc
