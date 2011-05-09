if [[ -x `which R` ]]; then
	export R_HOME=`Rscript -e 'cat(Sys.getenv()[["R_HOME"]])'`
	if [[ $OSTYPE == "linux-gnu" ]]; then
		export R_LIBS_SITE="/usr/local/lib/R/site-library"
	else
		export R_LIBS_SITE="$R_HOME/library"
	fi
	alias Rinstall="sudo R CMD INSTALL --library=$R_LIBS_SITE"
	alias Runisntall="sudo R CMD REMOVE  --library=$R_LIBS_SITE"
fi
