/*
	Author: GetSomePanda / Panda
	SteamID: 76561198145366418
	File Name: fn_messagesMenu.sqf
	Information: Sets up message menu.
*/
private["_messages","_playerList","_infoToPass","_delButton","_replyButton","_time","_timeArray","_year","_month","_day","_hour","_minutes"];

disableSerialization;

createDialog "life_cell_old_msgs";
waitUntil {!isNull (findDisplay 98111)};
_playerList = ((findDisplay 98111) displayCtrl 98112);
_delButton = ((findDisplay 98111) displayCtrl 98114);
_delButton ctrlShow false;
_replyButton = ((findDisplay 98111) displayCtrl 98115);
_replyButton ctrlShow false;

_messages = player getVariable "cellphone_messages";

lbClear _playerlist;

if(count _messages < 1) then 
{
	_playerList lbAdd format["No Messages Found!"];
	_playerList lbSetdata [(lbSize _playerList)-1, "You have no messages."];
}
else
{
	{
		_time = _x select 2;
		_timeArray = _time select 1;
		_year = _timeArray select 0;
		_month = _timeArray select 1;
		_day = _timeArray select 2;
		_hour = _timeArray select 3;
		_minutes = _timeArray select 4;
		
		if(_hour < 10) then
		{
			_hour = format["0%1",_hour];
		};
		
		if(_hour isEqualTo 10) then
		{
			_hour = format["%1" + "0",_hour];
		};
		
		if(_hour isEqualTo 20) then
		{
			_hour = format["%1" + "0",_hour];
		};
		
		if(_hour isEqualTo 30) then
		{
			_hour = format["%1" + "0",_hour];
		};
		
		if(_hour isEqualTo 40) then
		{
			_hour = format["%1" + "0",_hour];
		};
		
		if(_hour isEqualTo 50) then
		{
			_hour = format["%1" + "0",_hour];
		};
		
		if(_minutes < 10) then
		{
			_minutes = format["0%1",_minutes];
		};
		
		if(_minutes isEqualTo 10) then
		{
			_minutes = format["%1" + "0",_minutes];
		};
		
		if(_minutes isEqualTo 20) then
		{
			_minutes = format["%1" + "0",_minutes];
		};
		
		if(_minutes isEqualTo 30) then
		{
			_minutes = format["%1" + "0",_minutes];
		};
		
		if(_minutes isEqualTo 40) then
		{
			_minutes = format["%1" + "0",_minutes];
		};
		
		if(_minutes isEqualTo 50) then
		{
			_minutes = format["%1" + "0",_minutes];
		};
		
		_infoToPass = format["%1", _x];
		_playerList lbAdd format["%1 - %2:%3 %4/%5/%6", _x select 0, _hour, _minutes, _day, _month, _year];
		_playerList lbSetdata [(lbSize _playerList)-1, _infoToPass];
	} foreach _messages;
};


