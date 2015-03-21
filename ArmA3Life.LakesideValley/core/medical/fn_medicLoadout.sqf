/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addUniform "EMTRM_uni";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

player addItem "itemRadio";
player assignItem "itemRadio";


[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;