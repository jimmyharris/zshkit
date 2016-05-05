if [[ -d "$R_LIBS_SITE" ]]; then
	alias Rinstall="sudo R CMD INSTALL --library=$R_LIBS_SITE"
	alias Runisntall="sudo R CMD REMOVE  --library=$R_LIBS_SITE"
fi
