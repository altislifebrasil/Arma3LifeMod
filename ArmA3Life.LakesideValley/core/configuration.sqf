#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 7; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_intox = 0.00;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = 3500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 100000;
		life_paycheck = 2500;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_raxsrum"	
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	
	["license_civ_rifle","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["cannabis",2500],["opium",2500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",500],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
		
	["wheat",50],
	["sunflower",50],
	["corn",100],
	["bean",120],
	["cotton",150],
	["olive",175],
	["opium",1000],
	["cannabis",1000],
	["pumpkin",500],
	
	["wheat seed",10],
	["sunflower seed",10],
	["corn seed",10],
	["bean seed",10],
	["cotton seed",10],
	["olive seed",10],
	["opium seed",150],
	["cannabis seed",150],
	["pumpkin seed",50],

	["raw goat meat",500],
	["raw chicken",700],
	["raw sheep meat",500],
	["raw rabbit",700],
	
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",95000], 
	//Deo Additions
	["zoobeer",25], 
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",5],
	["Rax's Rum",25]

];
__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	
	["wheat",100],
	["sunflower",100],
	["corn",200],
	["bean",240],
	["cotton",300],
	["olive",350],
	["opium",2000],
	["cannabis",2000],
	["pumpkin",1000],
	
	["wheat seed",25],
	["sunflower seed",25],
	["corn seed",25],
	["bean seed",25],
	["cotton seed",25],
	["olive seed",25],
	["opium seed",400],
	["cannabis seed",400],
	["pumpkin seed",150],
	
	["raw goat meat",600],
	["raw chicken",800],
	["raw sheep meat",600],
	["raw rabbit",800],
	
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],

	// Deo's Adds
	["zoobeer",25],
	["BarGate",500],
	["RoadBlockConc",1000],
	["RoadBlockWood",750],
	["RoadCone",50],
	["RoadConeStrip",250],
	["RoadConeB",100],
	["RoadConeStripB",500],
	["cigarette",25],
	["Rax's Rum",50]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhit",0],
	["A3L_ChargerCstm",0],
	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["A3L_EscortTaxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["M1030",0],
	["B_MRAP_01_F",7500]
	
	
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",950],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000],
	["A3L_Karts",5000],
	["A3L_AmberLamps",25000],
	["A3L_Laddertruck",35000],
	["A3L_Cooper_concept_blue",22500],
	["A3L_Cooper_concept_black",22500],
	["A3L_Cooper_concept_red",22500],
	["A3L_Cooper_concept_white",22500],
	["A3L_AMC",32000],
	["A3L_AMXRed",32000],
	["A3L_AMXWhite",32000],
	["A3L_AMXBlue",32000],
	["A3L_AMXGL",32000],
	["A3L_VolvoS60RBlack",32000],
	["A3L_VolvoS60Rred",32000],
	["S_Skyline_Red",32000],
	["S_Skyline_Blue",32000],
	["S_Skyline_Black",32000],
	["S_Skyline_Yellow",32000],
	["S_Skyline_Purple",32000],
	["S_Skyline_White",32000],
	["A3L_Ferrari458black",130000],
	["A3L_Ferrari458white",130000],
	["A3L_Ferrari458blue",130000],
	["A3L_SuburbanWhite",25000],
	["A3L_SuburbanBlue",25000],
	["A3L_SuburbanRed",25000],
	["A3L_SuburbanBlack",25000],
	["A3L_SuburbanGrey",25000],
	["A3L_SuburbanOrange",25000],
	["A3L_TahoeWhite",22000],
	["A3L_TahoeRed",22000],
	["A3L_TahoeBlue",22000],
	["A3L_Camaro",32000],
	["A3L_FordKaBlue",6000],
	["A3L_FordKaRed",6000],
	["A3L_FordKaBlack",6000],
	["A3L_FordKaWhite",6000],
	["A3L_FordKaGrey",6000],
	["A3L_Taurus",22000],
	["A3L_TaurusBlack",22000],
	["A3L_TaurusBlue",22000],
	["A3L_TaurusRed",22000],
	["A3L_TaurusWhite",22000],
	["A3L_GrandCaravan",16000],
	["A3L_GrandCaravanBlk",16000],
	["A3L_GrandCaravanBlue",16000],
	["A3L_GrandCaravanGreen",16000],
	["A3L_GrandCaravanRed",16000],
	["A3L_GrandCaravanPurple",16000],
	["A3L_Challenger",25000],
	["A3L_ChallengerGreen",25000],
	["A3L_ChallengerRed",25000],
	["A3L_ChallengerWhite",25000],
	["A3L_ChallengerBlack",25000],
	["A3L_ChallengerBlue",25000],
	["A3L_ChargerBlack",37000],
	["A3L_ChargerWhit",37000],
	["A3L_ChargerCstm",37000],
	["Jonzie_Viper",52000],
	["A3L_Escort",1000],
	["A3L_EscortTaxi",1000],
	["A3L_EscortBlack",1000],
	["A3L_EscortBlue",1000],
	["A3L_EscortWhite",1000],
	["A3L_EscortPink",1000],
	["A3L_PuntoRed",6000],
	["A3L_PuntoBlack",6000],
	["A3L_PuntoWhite",6000],
	["A3L_PuntoGrey",6000],
	["A3L_RegalBlack",7000],
	["A3L_RegalBlue",7000],
	["A3L_RegalOrange",7000],
	["A3L_RegalRed",7000],
	["A3L_RegalWhite",7000],
	["A3L_JeepWhiteBlack",7000],
	["A3L_JeepGreenBlack",7000],
	["A3L_JeepRedTan",7000],
	["A3L_JeepRedBlack",7000],
	["A3L_JeepGrayBlack",7000],
	["A3L_VolksWagenGolfGTired",9000],
	["A3L_VolksWagenGolfGTiblack",9000],
	["A3L_VolksWagenGolfGTiblue",9000],
	["A3L_VolksWagenGolfGTiwhite",9000],
	["A3L_F350Black",10000],
	["A3L_F350Blue",10000],
	["A3L_F350Red",10000],
	["A3L_F350White",10000],
	["A3L_Dumptruck",25000],
	["C_Van_01_box_F",30000],
	["C_Van_01_transport_F",20000],
	["A3L_GrandCaravanUC",12000],
	["A3L_GrandCaravanUCBlack",12000],
	["A3L_TaurusFPBLBPD",12000],
	["A3L_TaurusFPBLBCSO",12000],
	["A3L_TaurusFPBPD",12000],
	["A3L_TaurusFPBPDGM",12000],
	["A3L_TaurusFPBCSO",12000],
	["A3L_TaurusUCBlack",12000],
	["A3L_TaurusUCGrey",12000],
	["A3L_TaurusUCWhite",12000],
	["A3L_TaurusUCBlue",12000],
	["A3L_TaurusUCRed",12000],
	["A3L_CVPIFPBPD",22000],
	["A3L_CVPIFPBCSO",22000],
	["A3L_CVPIFPBFG",22000],
	["A3L_CVPIFPBLBPD",22000],
	["A3L_CVPIFPBLBCSO",22000],
	["A3L_CVPIFPBLBFG",22000],
	["A3L_TahoeUCPB",22000],
	["A3L_TahoeUC",22000],
	["A3L_TahoeUCGMPB",22000],
	["A3L_TahoeCSOLBPB",22000],
	["A3L_jailBus",25000],
	["A3L_Suburban",27000],
	["A3L_SuburbanCSO",27000],
	["A3L_SuburbanFG",27000]
];
__CONST__(life_garage_sell,life_garage_sell);
