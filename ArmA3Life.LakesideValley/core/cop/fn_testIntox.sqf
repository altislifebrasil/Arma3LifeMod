/*
	File: fn_testIntox.sqf
	@Deo	
	Description:
	Starts the testing process.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
hint "Testing Intoxication Level...";
sleep 2;
if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "You can't test that person."};
[[player],"life_fnc_testIntoxClient",_unit,false] spawn life_fnc_MP;
