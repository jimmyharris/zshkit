#Functions
note() {
	local filename
	filename=~/notes/"$*".txt
	if [[ -f $filename ]]; then
		$EDITOR $filename
	else
		if [[ $EDITOR == vim ]]; then
			$EDITOR -c start $filename
		else
			$EDITOR $filename
		fi
	fi
}

notelist() {
	ls -ct ~/notes/ | grep "$*".txt | sed 's/\(.*\)\.txt/\1/'
}


# Aliases
alias n='noglob note'
alias nls='noglob notelist'
