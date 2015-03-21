/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		
			["EMTRM_uni", nil, 50],
			["A3L_EMT1", nil, 50],
			["A3L_EMT2", nil, 50],
			["fire_uni2", nil, 50],
			["fire_uni1", nil, 50],
			["emsoff_uni", nil, 50],
			["emt_Uni1", nil, 50],
			["emt_Uni3", nil, 50],
			["U_B_Wetsuit", nil, 50]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["firehat", nil, 20],
			["A3L_medic_helmet", nil, 20],
			["H_MilCap_blue", nil, 20],
			["H_CrewHelmetHeli_B", nil, 20],
			["H_Cap_blu", nil, 20],
			["H_Cap_red", nil, 20]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Bandanna_aviator", nil, 20]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVestIR_blk",nil,300],
			["V_TacVest_blk",nil,300],
			["V_RebreatherB",nil,300]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo",nil,300],
			["B_Carryall_oucamo",nil,300],
			["B_TacticalPack_blk",nil,300]
		];
	};
};
