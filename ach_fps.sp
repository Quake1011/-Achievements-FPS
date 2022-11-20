#include <FirePlayersStats>
#include <achievements>

public Plugin myinfo =
{
	name	= "[ACHIEVEMENTS] FPS Reward",
	version	= "0.0.1",
	author	= "Palonez",
    url = "https://github.com/Quake1011"
};

public void OnPluginStart()
{
    if(Achievements_CoreIsLoad()) Achievements_OnCoreLoaded();
}

public void Achievements_OnCoreLoaded()
{
    Achievements_RegisterTrigger("fps", FPSReward);
}

void FPSReward(int iClient, const char[] outcome)
{
    FPS_SetPoints(iClient, float(StringToInt(outcome)), false);
}