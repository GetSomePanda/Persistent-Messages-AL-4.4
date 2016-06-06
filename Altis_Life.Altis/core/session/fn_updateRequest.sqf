/*
	Saves the cellphone information to the database.
	Add this to the end of the file.
	- Panda
*/

_messages = player getVariable "cellphone_messages";

[getPlayerUid player, _messages] remoteExecCall ["DB_fnc_saveCellPhone",2];
