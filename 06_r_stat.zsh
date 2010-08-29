if [[ -x `which R` ]]; then
	export R_HOME=`Rscript -e 'cat(Sys.getenv()[["R_HOME"]])'`
	if [[ $OSTYPE == "linux-gnu" ]]; then
		alias Rinstall="R CMD INSTALL --library=$R_HOME/site-library"
	else
		alias Rinstall="R CMD INSTALL --library=$R_HOME/library"
		manpath=($R_HOME $manpath)
	fi
fi
