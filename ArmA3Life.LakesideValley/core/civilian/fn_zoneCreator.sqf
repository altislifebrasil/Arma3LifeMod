/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones"];
_appleZones = ["wheat_1","wheat_2","sunflower_1","sunflower_2"];
_peachZones = ["corn_1","bean_1","cotton_1","olive_1"];
_heroinZones = ["opium_1"];
_cocaineZones = ["cannabis_1"];
_weedZones = ["pumpkin_1"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction[(localize ""STR_Gather_Apples""),life_fnc_gather,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction[(localize ""STR_Gather_Peaches""),life_fnc_gather,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction[(localize ""STR_Gather_Heroin""),life_fnc_gather,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction[(localize ""STR_Gather_Cannabis""),life_fnc_gather,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction[(localize ""STR_Gather_Cocaine""),life_fnc_gather,'',0,false,false,'','!life_action_inUse'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;
