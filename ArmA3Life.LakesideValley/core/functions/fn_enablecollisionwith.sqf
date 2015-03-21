private ["_object","_objects","_type","_unit","_units"];
_object=_this select 0;
_type=_this select 1;
_units = playableUnits;
_unit=objnull;
_objects = _object getvariable _type;
{
	_unit=_x;
	{
	//Enable collision on each object
	_unit enablecollisionwith _x;
	//Enable simulation to see if objects still glitch/fly into the air/sink into the ground
	_x enablesimulation true;
	} foreach _objects;
} foreach _units;