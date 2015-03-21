/*
	File: fn_testIntoxClient.sqf
	@Deo	
	Description:
	Tests the player.
*/
private["_cop","_var","_val","_side"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};

[[player,life_intox],"life_fnc_intoxTestReturn",_cop,false] spawn life_fnc_MP;