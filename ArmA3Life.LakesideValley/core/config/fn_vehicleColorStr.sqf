/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "IVORY_PRIUS" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
			case 11: {_color = "Taxi";};
			case 12: {_color = "Traffic Enforcement";};
			case 13: {_color = "Patrol";};
			case 14: {_color = "EMS";};
			case 15: {_color = "UC Glossy White";};
			case 16: {_color = "UC Glossy Black";};
			case 17: {_color = "UC Glossy Blue";};
			case 18: {_color = "UC Glossy Pink";};
			case 19: {_color = "UC Glossy Green";};
			case 20: {_color = "UC Glossy Red";};
			case 21: {_color = "UC Glossy Purple";};
			case 22: {_color = "UC Sports 1";};
			case 23: {_color = "UC Sports 2";};
			case 24: {_color = "UC Sports 3";};
			case 25: {_color = "UC Sports 4";};
			case 26: {_color = "UC Taxi";};
		};
	};
	case "IVORY_R8SPYDER" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
		};
	};
	case "IVORY_R8" :
	{
		switch (_index) do
		{
			case 0: {_color = "Glossy White";};
			case 1: {_color = "Glossy Black";};
			case 2: {_color = "Glossy Blue";};
			case 3: {_color = "Glossy Pink";};
			case 4: {_color = "Glossy Green";};
			case 5: {_color = "Glossy Red";};
			case 6: {_color = "Glossy Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
		};
	};
	case "IVORY_REV" :
	{
		switch (_index) do
		{
			case 0: {_color = "Matte White";};
			case 1: {_color = "Matte Black";};
			case 2: {_color = "Matte Blue";};
			case 3: {_color = "Matte Pink";};
			case 4: {_color = "Matte Green";};
			case 5: {_color = "Matte Red";};
			case 6: {_color = "Matte Purple";};
			case 7: {_color = "Sports 1";};
			case 8: {_color = "Sports 2";};
			case 9: {_color = "Sports 3";};
			case 10: {_color = "Sports 4";};
			case 11: {_color = "Interceptor";};
			case 12: {_color = "Sheriff";};
			case 13: {_color = "Stoner 0-1";};
			case 14: {_color = "Sherpard 0-2";};
			case 15: {_color = "Martinez 1-1";};
			case 16: {_color = "Falon 1-2";};
			case 17: {_color = "Kwoczalla 1-3";};
			case 18: {_color = "Emerson 1-4";};
			case 19: {_color = "Koester 1-7";};
			case 20: {_color = "Forman 1-8";};
			case 21: {_color = "Abshire 2-0";};
			case 22: {_color = "McGuinness 2-1";};
			case 23: {_color = "Blue 2-2";};
			case 24: {_color = "O'hara 2-3";};
			case 25: {_color = "Gates 2-4";};
			case 26: {_color = "Indigo 2-5";};
			case 27: {_color = "Warfel 2-6";};
			case 28: {_color = "Votov 4-1";};
			case 29: {_color = "Reed 4-2";};
		};
	};
	case "A3L_M3" :
	{
		switch (_index) do
		{
			case 0: {_color = "Alpine White";};
			case 1: {_color = "Jet Black";};
			case 2: {_color = "Estoril Blue";};
			case 3: {_color = "Melbourne Red";};
			case 4: {_color = "Cocaine White";};
			case 5: {_color = "Midnight Black";};
			case 6: {_color = "Dubai Gold";};
			case 7: {_color = "Kitty Katt";};
			case 8: {_color = "Envy Black";};
			case 9: {_color = "UC Alpine White";};
			case 10: {_color = "UC Jet Black";};
			case 11: {_color = "UC Estoril Blue";};
			case 12: {_color = "UC Melbourne Red";};
			case 13: {_color = "UC Cocaine White";};
			case 14: {_color = "UC Midnight Black";};
			case 15: {_color = "UC Dubai Gold";};
			case 16: {_color = "UC Kitty Katt";};
			case 17: {_color = "UC Envy Black";};
		};
	};
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
		};
	};
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
		};
	};
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
		};
	};
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Cop";};
		};
	};
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Ion"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS White"};
		};
	};
	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Ion"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS"};
		};
	};
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS"};
		};
	};
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
		};
	};
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SWAT"};
		};
	};
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "VIP"};
			case 1: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
	case "O_Heli_Transport_04_medevac_F":
	{
		switch (_index) do
		{
			case 0: {_color = "EMS"};
		};
	};
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
		};
	};
};

_color;
