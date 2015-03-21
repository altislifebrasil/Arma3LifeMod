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
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["A3L_Priest_Uniform","Priest Uniform",10000],
		["A3L_Suit_Uniform","Suit",17500],
		["A3L_Character_Uniform","Life Uniform",15000],
		["A3L_Dude_Outfit","Dude outfit",20000],
		["A3L_Farmer_Outfit","Farmer Outfit",20000],
		["A3L_Worker_Outfit","Worker Outfit",20000],
		["A3LShirt","ArmA 3 Life Shirt",250],
		["A3L_Poop2day","I Pooped Today!",275],
		["A3L_A3LogoPants","A3L Logo Pants",150],
		["pervt_uni","Pervert Shirt",175],
		["BluePlaid_uni","A3L Plaid (Blue)",125],
		["OrangePlaid_uni","A3L Plaid (Orange)",350],
		["PinkPlaid_uni","A3L Plaid (Pink)",350],
		["RedPlaid_uni","A3L Plaid (Red)",350],
		["YellowPlaid_uni","A3L Plaid (Yellow)",350],
		["checkered_uni","A3L Polo (Checkered)",350],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",350],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",350],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",350],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",350],
		["kingfish_uni","A3L Polo (Kingfish)",350],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",350],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",350],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",350],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",350],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",350],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",350],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",350],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",350],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",350],
		["sohoku_uni","A3L Polo (Sohoku)",350],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",350],
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",350],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",350],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",350],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",350],
		["racer_uni","A3L Racer Uniform",350],
		["taxi_uni","A3L Taxi Uniform",350],
		["arma3","ArmA 3 Polo",350],
		["arma3black","ArmA 3 Polo (Black)",350],
		["ATI","ATI Enthusiast",350],
		["tacobell","Delgado Shirt",350],
		["dutch","Dutch Shirt",350],
		["hanacd","Hannes Academy",350],
		["nvidia","Nvidia Enthusiast",350],
		["SFG","SF Giant",350],
		["walkingdead","The Walking Dead",350]

		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_Legoman","Lego Helmet",10000],
			["A3L_soa_helmet","Biker Helmet",4000],	
			["A3L_gangster_hat","Gangster Mask",1000],
			["A3L_Mask","Mask",1000],				
			["A3L_longhairblack","Long Hair Black",120],
			["A3L_longhairblond","Long Hair Blond",120],
			["A3L_longhairbrown","Long Hair Brown",120],
			["A3L_Crown","Crown",120],
			["cowboyhat","Cowboyhat",120],
			["A3L_mexicanhat","Mexican Hat",120],
			["santahat","Santa hat",120],
			["A3L_Sombrero","Sombrero",120],
			["turban","Turban",120],
			["A3L_russianhat","Russianhat",120],
			["H_Cap_tan",nil,120],
			["H_Cap_blk",nil,120],
			["H_Cap_blk_CMMG",nil,120],
			["H_Cap_brn_SPECOPS",nil,120],
			["H_Cap_tan_specops_US",nil,120],
			["H_Cap_khaki_specops_UK",nil,120],
			["H_Cap_grn",nil,120],
			["H_Cap_grn_BI",nil,120],
			["H_Cap_blk_Raven",nil,120],
			["H_Cap_blk_ION",nil,120]

		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};
