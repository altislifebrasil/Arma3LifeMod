#include <macro.h>
/*
	File: fn_actionKeyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master action key handler, handles requests for picking up various items and
	interacting with other players (Cops = Cop Menu for unrestrain,escort,stop escort, arrest (if near cop hq), etc).
*/
private["_curTarget","_isWater", "_veh"];
_curTarget = cursorTarget;
if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.
if(life_interrupted) exitWith {life_interrupted = false;};
_isWater = surfaceIsWater (getPosASL player);
if(isNull _curTarget) exitWith {
	if(_isWater) then {
		private["_fish"];
		_fish = (nearestObjects[getPos player,["Fish_Base_F"],3]) select 0;
		if(!isNil "_fish") then {
			[_fish] call life_fnc_catchFish;
		};
	};
};

if(_curTarget isKindOf "House_F" && {player distance _curTarget < 12} OR ((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _curTarget)) exitWith {
	[_curTarget] call life_fnc_houseMenu;
};

if(dialog) exitWith {}; //Don't bother when a dialog is open.
if(vehicle player != player) exitWith {}; //He's in a vehicle, cancel!
life_action_inUse = true;

//Temp fail safe.
[] spawn {
	sleep 60;
	life_action_inUse = false;
};

//Check if it's a dead body.
if(_curTarget isKindOf "Man" && {!alive _curTarget} && {playerSide in [west,independent]}) exitWith {
	//Hotfix code by ins0
	if(((playerSide == blufor && {(call life_revive_cops)}) || playerSide == independent) && {"Medikit" in (items player)}) then {
		[_curTarget] call life_fnc_revivePlayer;
	};
};


if (typeOf _curTarget IN ["A3L_Wheat","A3L_Corn","A3L_Beans","A3L_Cannabis","A3L_Cotton","Ficus_Bush_1","A3L_Pumpkin","A3L_Sunflower","Oleander2"]) then {
	// It's a plant!
	
	[] call fnc_harvest;
};

if (typeOf _curTarget IN  animalArray) then {
	// It's a fahking animal!
	_animal = typeOf _curTarget;
	[_animal,_curTarget] spawn fnc_gutanimal;
};

//If target is a player then check if we can use the cop menu.
if(isPlayer _curTarget && _curTarget isKindOf "Man") then {
	if((_curTarget getVariable["restrained",false]) && !dialog && playerSide == west) then {
		[_curTarget] call life_fnc_copInteractionMenu;
	};
} else {
	//OK, it wasn't a player so what is it?
	private["_isVehicle","_miscItems","_money"];
	_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];
	_animalTypes = ["Salema_F","Ornate_random_F","Mackerel_F","Tuna_F","Mullet_F","CatShark_F","Turtle_F"];
	_money = "Land_Money_F";
	
	//It's a vehicle! open the vehicle interaction key!
	if(_isVehicle) then {
		if(!dialog) then {
			if(player distance _curTarget < ((boundingBox _curTarget select 1) select 0) + 2) then {
				[_curTarget] call life_fnc_vInteractionMenu;
			};
		};
	} else {
		//Is it a animal type?
		if((typeOf _curTarget) in _animalTypes) then {
			if((typeOf _curTarget) == "Turtle_F" && !alive _curTarget) then {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_catchTurtle;
				waitUntil {scriptDone _handle};
			} else {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_catchFish;
				waitUntil {scriptDone _handle};
			};
		} else {
			//OK, it wasn't a vehicle so let's see what else it could be?
			if((typeOf _curTarget) in _miscItems) then {
				//OK, it was a misc item (food,water,etc).
				
				if ((typeOf _curTarget) == "Land_Suitcase_F") then {
					private ["_var"];
					_var = _curTarget getVariable "pickup";
					if (isNil "_var") exitwith {};
					if (_var) then {
						if (count (attachedobjects player) > 0) exitwith {["You are already carrying a suitcase.",30,"red"] call A3L_Fnc_Msg;}; 
						if (side player == west) then {
								_veh = _this select 0;
								["Bring this suitcase to the PD for a reward!",30,"blue"] call A3L_Fnc_Msg;
								_curTarget setVariable ["pickup",false,true];
								_curTarget attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
								_curTarget setdir (getdir player + 180);
								_curTarget setpos (getpos _veh);
								_id = player addAction ["Drop suitcase", {detach (_this select 3)},_curTarget];
								
								[_curTarget,_id] spawn {
									_id = _this select 1;
									_suitcaseDeleted = false;
									while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
										if ((!(vehicle player == player)) && (!(_suitcaseDeleted))) then 
										{
											player removeAction _id;
											detach _veh;
											deleteVehicle _veh;
											_suitcaseDeleted = true;
										};
										
										if ((_suitcaseDeleted) && (vehicle player == player)) then {
											_veh = "Land_Suitcase_F" createvehicle (getpos player);
											_veh setVariable ["pickup",false,true];
											_veh attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
											_veh setdir (getdir player + 180);
											_veh setpos (getpos _veh);
											_id = player addAction ["Drop suitcase", {detach (_this select 3)},_veh];
											_suitcaseDeleted = false;
										};
									
										if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if (!(alive player)) exitwith {detach _veh;};
										
										sleep 0.1;
									};
									
									detach _veh;
									_veh setVariable ["pickup",true,true];
									player removeAction _id;
								};						
						};
						
						if (side player == civilian) then {
								["Bring this suitcase to a trader to get the cash!",30,"blue"] call A3L_Fnc_Msg;
								_curTarget setVariable ["pickup",false,true];
								_curTarget attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
								_curTarget setdir (getdir player + 180);
								_curTarget setpos (getpos _veh);
								_id = player addAction ["Drop suitcase", {detach (_this select 3)},_curTarget];
								
								[_curTarget,_id] spawn {
									_veh = _this select 0;
									_id = _this select 1;
									_suitcaseDeleted = false;
									while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
										if ((!(vehicle player == player)) && (!(_suitcaseDeleted))) then 
										{
											player removeAction _id;
											detach _veh;
											deleteVehicle _veh;
											_suitcaseDeleted = true;
										};
										
										if ((_suitcaseDeleted) && (vehicle player == player)) then {
											_veh = "Land_Suitcase_F" createvehicle (getpos player);
											_veh setVariable ["pickup",false,true];
											_veh attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
											_veh setdir (getdir player + 180);
											_veh setpos (getpos _veh);
											_id = player addAction ["Drop suitcase", {detach (_this select 3)},_veh];
											_suitcaseDeleted = false;
										};
										
										if((life_istazed) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((life_interrupted) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if((player getVariable["restrained",false]) && (!(_suitcaseDeleted))) exitWith {detach _veh;};
										if (!(alive player)) exitwith {detach _veh;};
										sleep 0.1;
									};
									
									detach _veh;
									_veh setVariable ["pickup",true,true];
									player removeAction _id;
								};
						};
					};
				};
				
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_pickupItem;
				waitUntil {scriptDone _handle};
			} else {
				//It wasn't a misc item so is it money?
				if((typeOf _curTarget) == _money && {!(_curTarget getVariable["inUse",false])}) then {
					private["_handle"];
					_curTarget setVariable["inUse",TRUE,TRUE];
					_handle = [_curTarget] spawn life_fnc_pickupMoney;
					waitUntil {scriptDone _handle};
				};
			};
		};
	};
};