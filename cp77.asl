state("Cyberpunk2077","1.12")
{
	byte loading : 0x3C80F10;
}
state("Cyberpunk2077","1.11")
{
	byte loading : 0x3C80F00;
}
state("Cyberpunk2077", "1.1")
{
	byte loading : 0x3C80F00;
}

state("Cyberpunk2077", "1.06")
{
	byte loading : 0x3C7EF40;
}

state("Cyberpunk2077", "1.05")
{
	int loading : 0x3C7EF75;
}

state("Cyberpunk2077", "1.04")
{
	byte loading : 0x3CBF140;
}


init
{
	version = modules.First().FileVersionInfo.ProductVersion;
	vars.loading = false;
	
	//timer.IsGameTimePaused = false;
}


update
{
	switch (version) {
		case "1.04": case "1.06": case "1.1": case "1.11": case "1.12":
			vars.loading = current.loading != 70;
			break;
		case "1.05":
			vars.loading = current.loading != 109;
			break;
	}
}

exit
{
	timer.IsGameTimePaused = true;
}

isLoading
{	
	return vars.loading;
}
