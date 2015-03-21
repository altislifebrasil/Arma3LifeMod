/*
	File: fn_roadconeB.sqf
	Author:@F
	Description:
	Spawns a blinking roadcone on the player waiting for placement.
*/
private["_pos","_cone1"];
_pos = [0,0,0];
_cone1 = "RoadCone_L_F" createVehicle _pos;
_cone1 setVariable ["roadcone",[_cone1],true];
life_roadcone=_cone1;
_handle = [life_roadcone,"roadcone"] spawn life_fnc_disablecollisionwith; 
waitUntil {scriptDone _handle}; 
[[life_roadcone,"roadcone"],"life_fnc_disablecollisionwith",true,false] call BIS_fnc_MP;
_cone1 attachto [player,[0,2,.35]];
{_x setdir 90;} foreach (_cone1 getvariable "roadcone");
closedialog 0;
waitUntil {isNull life_roadcone};
if(isNull _cone1) exitWith {life_roadcone = ObjNull;};