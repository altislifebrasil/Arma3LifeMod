/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something with vehicle purchasing.
*/
private["_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle"];
_mode = _this select 0;
if((lbCurSel 2302) == -1) exitWith {hint localize "STR_Shop_Veh_DidntPick"};
_className = lbData[2302,(lbCurSel 2302)];
_vIndex = lbValue[2302,(lbCurSel 2302)];
_vehicleList = [life_veh_shop select 0] call life_fnc_vehicleListCfg; _basePrice = (_vehicleList select _vIndex) select 1;
 if(_mode) then {_basePrice = round(_basePrice * 1.5)};
_colorIndex = lbValue[2304,(lbCurSel 2304)];

//Series of checks (YAY!)
if(_basePrice < 0) exitWith {}; //Bad price entry
if(life_cash < _basePrice) exitWith {hint format[localize "STR_Shop_Veh_NotEnough",[_basePrice - life_cash] call life_fnc_numberText];};
if(!([_className] call life_fnc_vehShopLicenses) && _className != "B_MRAP_01_hmg_F") exitWith {hint localize "STR_Shop_Veh_NoLicense"};

_spawnPoints = life_veh_shop select 1;
_spawnPoint = "";

if((life_veh_shop select 0) == "med_air_hs") then {
	if(count(nearestObjects[(getMarkerPos _spawnPoints),["Air"],35]) == 0) exitWith {_spawnPoint = _spawnPoints};
} else {
	//Check if there is multiple spawn points and find a suitable spawnpoint.
	if(typeName _spawnPoints == typeName []) then {
		//Find an available spawn point.
		{if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
	} else {
		if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _spawnPoints};
	};
};


if(_spawnPoint == "") exitWith {hint localize "STR_Shop_Veh_Block";};
life_cash = life_cash - _basePrice;
hint format[localize "STR_Shop_Veh_Bought",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_basePrice] call life_fnc_numberText];

//Spawn the vehicle and prep it.
if((life_veh_shop select 0) == "med_air_hs") then {
	_vehicle = createVehicle [_className,[0,0,999],[], 0, "NONE"];
	waitUntil {!isNil "_vehicle"}; //Wait?
	_vehicle allowDamage false;
	_hs = nearestObjects[getMarkerPos _spawnPoint,["Land_Hospital_side2_F"],50] select 0;
	_vehicle setPosATL (_hs modelToWorld [-0.4,-4,12.65]);
	_vehicle lock 2;
	[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
	[_vehicle] call life_fnc_clearVehicleAmmo;
	[[_vehicle,"trunk_in_use",false,true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
	[[_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
	_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
} else {
	_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
	waitUntil {!isNil "_vehicle"}; //Wait?
	_vehicle allowDamage false; //Temp disable damage handling..
	_vehicle lock 2;
	_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
	_vehicle setDir (markerDir _spawnPoint);
	_vehicle setPos (getMarkerPos _spawnPoint);
	[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
	[_vehicle] call life_fnc_clearVehicleAmmo;
	[[_vehicle,"trunk_in_use",false,true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
	[[_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
	_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
};

if(_className == "IVORY_REV") then {
	if(_colorIndex in [11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]) then {
		[_vehicle,"cop_rev",true] spawn life_fnc_vehicleAnimate;
	};
};

if(_className == "IVORY_PRIUS") then {
	if(_colorIndex in [14]) then {
		[_vehicle,"med_prius",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [7,8,9,10,22,23,24,25]) then {
		[_vehicle,"sports_prius",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [11,26]) then {
		[_vehicle,"taxi_prius",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [12,13]) then {
		[_vehicle,"cop_prius",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [15,16,17,18,19,20,21,22,23,24,25,26]) then {
		[_vehicle,"uc_prius",true] spawn life_fnc_vehicleAnimate;
	};
};

if(_className == "A3L_M3") then {
	if(_colorIndex in [1,2,3,4,7,8,9,10,11,12,13,16,17]) then {
		[_vehicle,"m3_glossy",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [5,14]) then {
		[_vehicle,"m3_matte",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [6,15]) then {
		[_vehicle,"m3_chrome",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [6,7,15,16]) then {
		[_vehicle,"m3_spoiler",true] spawn life_fnc_vehicleAnimate;
	};
	if(_colorIndex in [9,10,11,12,13,14,15,16,17]) then {
		[_vehicle,"m3_police",true] spawn life_fnc_vehicleAnimate;
	};
};
		
		
_vehicle allowDamage true;

//life_vehicles set[count life_vehicles,_vehicle]; //Add err to the chain.
life_vehicles pushBack _vehicle;
[[getPlayerUID player,playerSide,_vehicle,1],"TON_fnc_keyManagement",false,false] spawn life_fnc_MP;

if(_mode) then {
	if(!(_className in ["B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F"])) then {
		[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
	};
};

[0] call SOCK_fnc_updatePartial;
closeDialog 0; //Exit the menu.
true;
