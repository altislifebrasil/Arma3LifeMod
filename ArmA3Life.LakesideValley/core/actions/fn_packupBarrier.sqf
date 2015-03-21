/*
	File: fn_packupCone.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed road barrier.
*/
private["_barrier"];
_barrier = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_barrier") exitWith {};

if(([true,"roadbarrier",1] call life_fnc_handleInv)) then
{
	titleText["You have packed up the road barrier.","PLAIN"];
	player removeAction life_action_roadBarrierPickup;
	life_action_roadBarrierPickup = nil;
	deleteVehicle _barrier;
};