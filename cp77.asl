state("Cyberpunk2077")
{
	byte loading : 0x3CBF140;
}

init
{
	timer.IsGameTimePaused = false;
}

isLoading
{
	return current.loading != 70;
}

exit
{
	timer.IsGameTimePaused = true;
}
