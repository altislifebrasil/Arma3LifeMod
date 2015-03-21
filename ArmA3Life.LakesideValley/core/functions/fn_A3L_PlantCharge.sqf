
if ((player distance bank) < 10) then {

	private ["_copamount"];
	if ((side player) == west) exitwith {bank animate ["vault_door", 0]; bank animate ["vault_turn", 0]; ["Bank vault closed.",30,"red"] call A3L_Fnc_Msg; };
	_copamount = 0; 
	{if (side _x == west) then {_copamount = _copamount + 1};} foreach playableUnits;
	if (copamount < 5) exitwith {["There needs to be a minimum of 5 cops online!",30,"red"] call A3L_Fnc_Msg;};

	if (bank getVariable "robbed") exitwith {["The bank was recently robbed.",30,"red"] call A3L_Fnc_Msg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["You don't have a satchel charge.",30,"red"] call A3L_Fnc_Msg;};

	[] call fnc_placec4;

};

if ((player distance prisondoor) < 10) then {

	private ["_copamount"];
	if ((side player) == west) exitwith {prisondoor animate ['maindoor1', 0]; prisondoor animate ['maindoor2', 0]; ["Prison enterence closed.",30,"red"] call A3L_Fnc_Msg; };
	_copamount = 0; 
	{if (side _x == west) then {_copamount = _copamount + 1};} foreach playableUnits;
	if (_copamount < 5) exitwith {["There needs to be a minimum of 5 cops online!",30,"red"] call A3L_Fnc_Msg;};

	if (prisondoor getVariable "robbed") exitwith {["A jailbreak took place already within the last 30 minutes.",30,"red"] call A3L_Fnc_Msg;};
	if (!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {["You don't have a satchel charge.",30,"red"] call A3L_Fnc_Msg;};

	[] call fnc_placec4;

};