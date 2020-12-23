state("Cyberpunk2077","1.05")
{
	byte loading : 0x3C7EF75;
}

state("Cyberpunk2077","1.04")
{
	byte loading : 0x3CBF140;
}

init
{
	version = modules.First().FileVersionInfo.ProductVersion;
	vars.loading = false;
}

update
{
	if(version == "1.05")
	{
		vars.loading =(current.loading !=109);
	}
	
	if(version == "1.04")
	{
		vars.loading =(current.loading !=70);
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

