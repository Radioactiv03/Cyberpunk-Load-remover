state("Cyberpunk2077","1.06")
{
	byte loading : 0x3C7EF40;
	string20 mission : 0x048E0FF8, 0x88, 0x18, 0x18, 0x630, 0x178, 0x18, 0xD8;
}

state("Cyberpunk2077","1.05")
{
    int loading : 0x3C7EF75;
  //int loading : 0x3C7EF74;
}

state("Cyberpunk2077","1.04")
{
	byte loading : 0x3CBF140;
}

startup
  {
	vars.missionname = new Dictionary<string,string>
	{
		{"q000_street_kid","Street Kid"},
		{"q115","Nocturne OP55N1"}
	};
}

init
{
	version = modules.First().FileVersionInfo.ProductVersion;
	vars.loading = false;
}

split
{
	return (current.mission != old.mission);
}

update
{


	if(version == "1.06")
	{
		vars.loading=(current.loading !=70);
	}

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

