state("Cyberpunk2077")
{
    byte loading : 0x3CBF140;
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
	return current.loading != 70;
}