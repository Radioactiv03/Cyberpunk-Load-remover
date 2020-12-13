state("Cyberpunk2077")
{
    byte loading : 0x3CBF140;
}

update
{
	vars.load = false;
	if((current.loading != 70))
	{
		vars.load = true;
	}
}


exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
	return vars.load;
}
