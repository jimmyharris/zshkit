function not_run_from_ssh () {
	ps x|grep "${PPID}.*sshd"|grep -v grep
	echo $?
}

typeset -U path

if [[ -x `which nvim` ]]; then
	EDITOR=nvim
elif [[ -x `which vim` ]]; then
	EDITOR=vim
elif [[ -x `which mate` && $(not_run_from_ssh) = 1 ]]; then
	EDITOR="mate -w"
elif [[ -x `which nano` ]]; then
	EDITOR=nano
elif [[ -x `which pico` ]]; then
	EDITOR=pico
else
	EDITOR=vi
fi

export EDITOR

# Set EDITOR as default for plaintext stuff
for s in txt c cc cxx cpp lua py; do
	alias -s $s=$EDITOR
done

# Abuse the "open" command on OS X
if [[ $OSTYPE[1,6] == "darwin" ]]; then
	for s in mp3 wav aac \
		avi mp4 m4v mov qt mpg mpeg \
		jpg png psd bmp gif tif tiff \
		ps pdf html dmg; do
		alias -s $s=open
	done
fi

