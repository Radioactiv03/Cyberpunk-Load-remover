state("Cyberpunk2077")
{
    int loading : 0x3C7EF74;
}

exit
{
    timer.IsGameTimePaused = true;
}

isLoading
{
	return (current.loading != 1694526817);
}
