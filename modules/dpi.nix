{
# Make YouTube work in Russia
    services.zapret = {
	enable = true;
	params = [
	    "--dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1"
	];
    };
}
