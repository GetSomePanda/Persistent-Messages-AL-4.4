/*
	Saves the cellphone information to the database.
	Add this to the end of the file.
	- Panda
*/

_messages = player getVariable "cellphone_messages";

if(life_HC_isActive) then 
{
	[getPlayerUid player, _messages] remoteExecCall ["HC_fnc_saveCellPhone",HC_Life];
} 
else
{
	[getPlayerUid player, _messages] remoteExecCall ["DB_fnc_saveCellPhone",2];
};
