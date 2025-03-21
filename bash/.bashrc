# session exports
export EDITOR=nvim

# aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
alias tree='tree -C'
alias wofi='wofi --show drun -I -i --gtk-dark -p "Search:"'

# prompt
PS1='\$ {\e[1;32m\W\e[0m} ♥ <\e[1;35m\u\e[0m@\e[1;35m\h\e[0m> - '

dot() {
	local dfh="$HOME/.dotfiles"
	if [ -z "$1" ]; then
		cd "$dfh"
	else
		local pkg_dir="$dfh/$1"
		if [ -d "$pkg_dir" ]; then 
			cd "$pkg_dir" 
		fi
		local cfg_dir=".config/$1"
		if [ -d "$pkg_dir/$cfg_dir" ]; then
			cd "$cfg_dir"
		fi 
	fi
	
	if [ -n "$2" ]; then
		if [ -n "$3" ] && [ "$3" = "-s" ]; then
			eval "sudo $EDITOR $2"
		else
			eval "$EDITOR $2"
		fi
	fi
}
