state("Cyberpunk2077")
{
    byte loading : 0x3CBF140;
}

update
{
	//string x = Convert.ToString(current.loading);
	//print(x);
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
