		private ["_veh","_id"];
		_veh = "Land_Suitcase_F" createvehicle (getpos player);
		{_veh disableCollisionWith _x} foreach playableUnits;
		_veh setVariable ["pickup",false,true];
		_veh attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
		_veh setdir (getdir player + 180);
		_veh setpos (getpos _veh);
		_id = player addAction ["Drop suitcase", {detach (_this select 3)},_veh];
		
		[_veh,_id] spawn {
			_veh = _this select 0;
			_id = _this select 1;
			_suitcaseDeleted = false;
			while {(_veh IN (attachedObjects player)) OR (_suitcaseDeleted)} do {
				if ((!(vehicle player == player)) && (!(_suitcaseDeleted))) then 
				{
					player removeAction _id;
					deleteVehicle _veh;
					_suitcaseDeleted = true;
				};
				
				if ((_suitcaseDeleted) && (vehicle player == player)) then {
					_veh = "Land_Suitcase_F" createvehicle (getpos player);
					_veh setVariable ["pickup",false,true];
					_veh attachto [player, [0.035,-.055,-0.22], "RightHandMiddle1"];
					_veh setdir (getdir player + 180);
					_veh setpos (getpos _veh);
					_id = player addAction ["Drop suitcase", {detach (_this select 3)},_veh];
					_suitcaseDeleted = false;
				};
				
				if(life_istazed) exitWith {detach _veh;};
				if(life_interrupted) exitWith {detach _veh;};
				if((player getVariable["restrained",false])) exitWith {detach _veh;};
				sleep 0.1;
			};
			
			hint "deleted";
			detach _veh;
			_veh setVariable ["pickup",true,true];
			player removeAction _id;
		};