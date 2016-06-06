/*
	Author: GetSomePanda / Panda
	SteamID: 76561198145366418
	File Name: fn_getRealTime.sqf
	Information: Get the real time.
*/
private["_realTime"];

_realTime = "extDB2" callExtension "9:LOCAL_TIME";
_realTime = call compile _realTime;

missionNameSpace setVariable ["RealTime",_realTime];