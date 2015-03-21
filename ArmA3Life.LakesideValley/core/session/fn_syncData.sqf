/*
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
sleep 0.2;
_syncsucces = "\A3L_Client2\tablet_new\other\syncmenu\syncmenu.paa";
_cannotsync = "\A3L_Client2\tablet_new\other\syncmenu\cannotsync.paa";

_fnc_scriptName = "Player Synchronization";
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {
((uiNamespace getVariable "syncmenu") displayCtrl 98294) ctrlSettext _cannotsync; 
//hint localize "STR_Session_SyncdAlready";
};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint localize "STR_Session_SyncCheater"; closedialog 0;};

[] call SOCK_fnc_updateRequest;
((uiNamespace getVariable "syncmenu") displayCtrl 98294) ctrlSettext _syncsucces; 
//hint localize "STR_Session_SyncData";
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};

hint "loaded!";