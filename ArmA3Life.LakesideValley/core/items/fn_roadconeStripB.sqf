/*
	File: fn_roadconeStripB.sqf
	Author:@F
	Description:
	Spawns a blinking roadcone strip on the player waiting for placement.
*/
private["_pos","_cone1","_cone2","_cone3","_cone4","_cone5"];
_pos = [0,0,0];
_cone1 = "RoadCone_L_F" createVehicle _pos;
_cone2 = "RoadCone_L_F" createVehicle _pos;
_cone3 = "RoadCone_L_F" createVehicle _pos;
_cone4 = "RoadCone_L_F" createVehicle _pos;
_cone5 = "RoadCone_L_F" createVehicle _pos;
_cone1 setVariable ["roadcone",[_cone1,_cone2,_cone3,_cone4,_cone5],true];
life_roadcone=_cone1;
_handle = [life_roadcone,"roadcone"] spawn life_fnc_disablecollisionwith; 
waitUntil {scriptDone _handle}; 
[[life_roadcone,"roadcone"],"life_fnc_disablecollisionwith",true,false] call BIS_fnc_MP;
_cone1 attachto [player,[0,2,.35]];
_cone2 attachto [player,[0,3,.35]];
_cone3 attachto [player,[0,4,.35]];
_cone4 attachto [player,[0,5,.35]];
_cone5 attachto [player,[0,6,.35]];
{_x setdir 90;} foreach (_cone1 getvariable "roadcone");
closedialog 0;
waitUntil {isNull life_roadcone};
if(isNull _cone1) exitWith {life_roadcone = ObjNull;};