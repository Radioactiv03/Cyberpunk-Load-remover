state("Cyberpunk2077","1.06")
{
	byte loading : 0x3C7EF40;
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{	
	return (current.loading != 70);
}

