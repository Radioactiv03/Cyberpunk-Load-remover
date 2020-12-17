state("Cyberpunk2077")
{
	byte loading : 0x3CBF140;
}

isLoading
{
	return current.loading != 70;
}

exit
{
	timer.IsGameTimePaused = true;
}
