player action ["Eject", vehicle player];
[] spawn
{
	while {(getpos player) select 2 > 1} do
	{
		player setvelocity [0,0,-6];
	};
};