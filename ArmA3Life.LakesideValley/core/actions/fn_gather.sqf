/*
	File: fn_gather.sqf
	Author: Arma 3 Life [www.arma3-life.com/]
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_seeds"];
_resourceZones = ["wheat_1","wheat_2","sunflower_1","sunflower_2","corn_1","bean_1","cotton_1","olive_1","opium_1","cannabis_1","pumpkin_1"];
_zone = "";


{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["wheat_1"]): {_gather = "wheat"; _seeds = "wheat seed"; _val = 3;};
	case (_zone in ["wheat_2"]): {_gather = "wheat"; _seeds = "wheat seed"; _val = 3;};
	case (_zone in ["sunflower_1"]): {_gather = "sunflower"; _seeds = "sunflower seed"; _val = 3;};
	case (_zone in ["sunflower_2"]): {_gather = "sunflower"; _seeds = "sunflower seed"; _val = 3;};
	case (_zone in ["corn_1"]): {_gather = "corn Plant"; _seeds = "corn seed"; _val = 3;};
	case (_zone in ["bean_1"]): {_gather = "bean Plant"; _seeds = "bean seed"; _val = 3;};
	case (_zone in ["cotton_1"]): {_gather = "cotton Plant"; _seeds = "cotton seed"; _val = 3;};
	case (_zone in ["olive_1"]): {_gather = "olive Plant"; _seeds = "olive seed"; _val = 3;};
	case (_zone in ["opium_1"]): {_gather = "opium Poppy"; _seeds = "opium seed"; _val = 1;};
	case (_zone in ["cannabis_1"]): {_gather = "cannabis Plant"; _seeds = "cannabis seed"; _val = 1;};
	case (_zone in ["pumpkin_1"]): {_gather = "pumpkin"; _seeds = "pumpkin seed"; _val = 1;};
	default {""};
};


//gather check??
if(vehicle player != player) exitWith {hint localize "STR_NOTF_GatherVeh";};

life_action_inUse = true;


_plantnearby = false;

_plantclsnamearr = [
"A3L_Wheat",
"A3L_Corn",
"A3L_Beans",
"A3L_Cannabis",
"A3L_Cotton",
"Ficus_Bush_1",
"A3L_Pumpkin",
"A3L_Sunflower",
"Oleander2"
];

{
_objectarr = nearestObjects [player, [_x], 3];
 if (count _objectarr == 0) then {} else {_plantnearby = true;};
} foreach _plantclsnamearr;

if (_plantnearby) then {

["Too close to another plant",20,"red"] call A3L_Fnc_Msg;
life_action_inUse = false;
} else {
if(!([false,_seeds,1] call life_fnc_handleInv)) exitWith {
["You need to buy seeds at the Farming Market",20,"red"] call A3L_Fnc_Msg;
life_action_inUse = false;
};
_plantedtext = format["You planted some %1",_gather];
[_plantedtext,20,"red"] call A3L_Fnc_Msg;
[[player,_gather],"svr_plantseed",false,false,false] spawn life_fnc_MP;
life_action_inUse = false;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
};

/*

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

*/

