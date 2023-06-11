# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/v/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
RPROMPT='[%F{yellow}%?%f]'

# User configuration

function arkenfox {
	profiles=("/home/v/.mozilla/firefox/4fvw5er8.Main" "/home/v/.mozilla/firefox/6i55aqht.Geoguessr")
	for i in 1 2; do
		cd $profiles[i]
		./updater.sh
		./prefsCleaner.sh;      
	done
	cd
}

eval "$(starship init zsh)"
