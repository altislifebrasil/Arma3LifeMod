#include <macro.h>
/*
	use_Heroin.sqf
	Creates usage effect for using Heroin
*/
private["_force"];

player setVariable["intoxicated",true,true];
[[0,format["%1 is trippin balls on Heroin.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;

for "_i" from 0 to 200 do
{
	_force = random 15;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 24, _force / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};

"chromAberration" ppEffectEnable false;
if(life_intox <= 0.08) then {player setVariable["intoxicated",false,true];};