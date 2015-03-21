/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			if(life_intox <= 0.02) then
			{
			life_intox = 0.00;
			}
			else
			{
			life_intox = life_intox - 0.02;			
			};			
		};
	};

	case (_item == "cigarette"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText["You have consumed a Cigarette","PLAIN"];
			player setFatigue 1;
			[] spawn life_fnc_useCigarette;	
		};
	};

	case (_item == "zoobeer"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText["You have consumed a Zoo Beer","PLAIN"];
			life_intox = life_intox + 0.02;
		};
	};
	
	case (_item == "Rax's Rum"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			titleText["You have consumed a Rax's Rum","PLAIN"];
			life_intox = life_intox + 0.06;
		};
	};
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};

	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 sparks up a joint.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useMarijuana;
			player setFatigue 1;
		};
	};

	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn
			{
				life_cocaine_effect = time;
				titleText["You're so jacked up on Cocaine you can now sprint for 2 minutes","PLAIN"];
				player enableFatigue false;
				life_intox = life_intox + 0.10;
				[] spawn life_fnc_useCocaine;
				waitUntil {!alive player OR ((time - life_cocaine_effect) > (2 * 60))};
				player enableFatigue true;
			};
		};
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[[0,format["%1 injects some Heroin.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useHeroin;
		};
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item == "BarGate"):
	{
		if(!isNull life_bargate) exitWith {hint "You already have a BarGate active in deployment"};
		if(playerSide == west) then 
		{
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_BarGate;
			};
		};
	};

	case (_item == "RoadCone"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Roadcone active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadCone;
			};
		};
	};

	case (_item == "RoadConeB"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Blinking Roadcone active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeB;
			};
		};
	};
	case (_item == "RoadConeStrip"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Roadcone Strip active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeStrip;
			};
		};
	};
	case (_item == "RoadConeStripB"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Blinking Roadcone Strip active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadConeStripB;
			};
		};
	};

	case (_item == "RoadBlockConc"):
	{
		if(!isNull life_roadblock) exitWith {hint "You already have a Road Block active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadBlockConc;
			};
		};
	};

	case (_item == "RoadBlockWood"):
	{
		if(!isNull life_roadblock) exitWith {hint "You already have a Road Block active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then 
			{
				[] spawn life_fnc_RoadBlockWood;
			};
		};
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;