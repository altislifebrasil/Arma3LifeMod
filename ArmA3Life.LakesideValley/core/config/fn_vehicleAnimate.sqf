/*
	File: fn_vehicleAnimate.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Pass what you want to be animated.
*/
private["_vehicle","_animate","_state"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isnull _vehicle) exitwith {}; //FUCK
_animate = [_this,1,"",["",[]]] call BIS_fnc_param;
_preset = [_this,2,false,[false]] call BIS_fnc_param;

if(!_preset) then
{
	if(count _animate > 1) then
	{
		{
			_vehicle animate[_x select 0,_x select 1];
		} foreach _animate;
	}
		else
	{
		_vehicle animate[_animate select 0,_animate select 1];
	};
}
	else
{
	switch (_animate) do
	{
		case "cop_rev":
		{
			_vehicle animate ["lightbar",1];
			_vehicle animate ["police",1];
			_vehicle addWeapon "A3L_horn_airhorn";
			_vehicle addWeapon "A3L_horn_priority";
			_vehicle addWeapon "A3L_horn_takedown1";
			_vehicle addWeapon "A3L_horn_takedown2";
		};
		case "cop_prius":
		{
			_vehicle animate ["lightbar",1];
			_vehicle animate ["police_switch",1];
			_vehicle setobjecttextureglobal [1,"ivory_prius\data\e45f0c4e.paa"];
			_vehicle addWeapon "A3L_horn_airhorn";
			_vehicle addWeapon "A3L_horn_priority";
			_vehicle addWeapon "A3L_horn_takedown1";
			_vehicle addWeapon "A3L_horn_takedown2";
		};
		case "uc_prius":
		{
			_vehicle animate ["police_switch",1];
			_vehicle addWeapon "A3L_horn_airhorn";
			_vehicle addWeapon "A3L_horn_priority";
			_vehicle addWeapon "A3L_horn_takedown1";
			_vehicle addWeapon "A3L_horn_takedown2";
		};
		case "med_prius":
		{
			_vehicle animate ["lightbar",1];
			_vehicle animate ["ems_switch",1];
			_vehicle setobjecttextureglobal [1,"ivory_prius\data\ems.paa"];
			_vehicle addWeapon "A3L_horn_airhorn";
			_vehicle addWeapon "A3L_horn_priority";
			_vehicle addWeapon "A3L_horn_takedown1";
			_vehicle addWeapon "A3L_horn_takedown2";
		};
		case "sports_prius":
		{
			_vehicle animate ["spoiler",1];
		};
		case "taxi_prius":
		{
			_vehicle animate ["taxi",1];
		};
		case "m3_spoiler":
		{
			_vehicle animate ["spoiler",1];
		};
		case "m3_police":
		{
			_vehicle animate ["police",1];
			_vehicle addWeapon "A3L_horn_airhorn";
			_vehicle addWeapon "A3L_horn_priority";
			_vehicle addWeapon "A3L_horn_takedown1";
			_vehicle addWeapon "A3L_horn_takedown2";
		};
		case "m3_matte":
		{
			_vehicle setObjectMaterial [0,"a3l_m3\data\matte.rvmat"];
		};
		case "m3_glossy":
		{
			_vehicle setObjectMaterial [0,"a3l_m3\data\glossy.rvmat"];
		};
		case "m3_chrome":
		{
			_vehicle setObjectMaterial [0,"a3l_m3\data\chrome.rvmat"];
		};
	};
};
