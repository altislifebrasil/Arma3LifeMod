/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F"]): {[1550000,3]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F"]): {[2200000,4]};
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[500000,0]};
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F"]): {[1050000,2]};
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F"]): {[1000500,2]};
	case (_house in ["Land_i_House_Small_03_V1_F"]): {[1250000,3]};
	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F"]): {[750000,1]};
	case (_house in ["Land_i_Addon_02_V1_F"]): {[250000,1]};
	case (_house in ["Land_Slum_House01_F","Land_Slum_House03_F","Land_Slum_House02_F","Land_cargo_house_slum_F"]): {[150000,1]};
	case (_house in ["Land_Cargo_House_V1_F","Land_Cargo_House_V2_F","Land_Cargo_House_V3_F","Land_Medevac_house_V1_F","Land_Research_house_V1_F"]): {[200000,1]};
	case (_house in ["Land_Offices_01_V1_F","Land_MilOffices_V1_F"]): {[3000000,5]};
	case (_house in ["Land_i_Shed_Ind_F"]): {[2000000,4]};
	case (_house in ["Land_mbg_ger_pub_1","Land_mbg_ger_pub_2"]): {[4000000,4]};
	case (_house in ["Land_e76_us_house02a","Land_e76_us_house01","Land_e76_us_house01a","Land_e76_us_house01a","Land_e76_us_house01b"]): {[1000000,4]};
	case (_house in ["Land_A_Villa_EP1"]): {[5000000,6]};
	case (_house in ["Land_Stone_Gate_F"]): {[25000,0]};
	default {[]};
};