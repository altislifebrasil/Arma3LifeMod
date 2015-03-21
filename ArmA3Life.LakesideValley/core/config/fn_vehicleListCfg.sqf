#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = [
			["IVORY_PRIUS",25000],
			["IVORY_R8",130000],
			["IVORY_R8SPYDER",130000],
			["IVORY_REV",200000]
		];
	};
	case "kart_shop":
	{
		_return = [
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["IVORY_PRIUS",5000],
			["A3L_CVPILBFD",10000],
			["Jonzie_Ambulance",25000],
			["A3L_AmberLamps",25000],
			["A3L_Laddertruck",40000]
		];
	};
	case "med_air_hs": {
		_return = [
			["ivory_b206_rescue",45000],
			["IVORY_BELL512_RESCUE",85000],
			["C_Heli_Light_01_civil_F",50000],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_medevac_F", 150000]
		];
	};
	case "exo_car":
	{
		_return = [
			["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],
			
			["A3L_RX7_Blue",120000],
			["A3L_RX7_Red",120000],
			["A3L_RX7_White",120000],
			["A3L_RX7_Black",120000],
			
			
			["A3L_AMC",80000],
			["A3L_AMXRed",80000],
			["A3L_AMXWhite",80000],
			["A3L_AMXBlue",80000],
			["A3L_AMXGL",85000],
			["A3L_VolvoS60RBlack",70000],
			["A3L_VolvoS60Rred",70000],
			["S_Skyline_Red",95000],
			["S_Skyline_Blue",95000],
			["S_Skyline_Black",95000],
			["S_Skyline_Yellow",95000],
			["S_Skyline_Purple",95000],
			["S_Skyline_White",95000],
			["S_Vantage_Red",350000],
			["S_Vantage_Blue",350000],
			["S_Vantage_Black",350000],
			["S_Vantage_Yellow",350000],
			["S_Vantage_LightBlue",350000],
			["S_Vantage_Purple",350000],
			["S_Vantage_White",350000],
			["A3L_Ferrari458black",530000],
			["A3L_Ferrari458white",530000],
			["A3L_Ferrari458blue",530000],
			["S_PorscheRS_Black",450000],
			["S_PorscheRS_Yellow",450000],
			["S_PorscheRS_White",450000],
			["S_McLarenP1_Black",850000],
			["S_McLarenP1_Blue",850000],
			["S_McLarenP1_Orange",850000],
			["S_McLarenP1_White",850000],
			["S_McLarenP1_Yellow",850000],
			["S_McLarenP1_Silver",850000],
			
			["A3L_Veyron",1500000],
			["A3L_Veyron_red",1500000],
			["A3L_Veyron_black",1500000],
			["A3L_Veyron_white",1500000],
			["A3L_Veyron_orange",1500000]
		];
	};
	case "chev_car":
	{
		_return = [
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["A3L_TahoeWhite",105000],
			["A3L_TahoeRed",105000],
			["A3L_TahoeBlue",105000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = [
			["A3L_FordKaBlue",30000],
			["A3L_FordKaRed",30000],
			["A3L_FordKaBlack",30000],
			["A3L_FordKaWhite",30000],
			["A3L_FordKaGrey",30000],
			["A3L_CVWhite",60000],
			["A3L_CVBlack",60000],
			["A3L_CVGrey",60000],
			["A3L_CVRed",60000],
			["A3L_CVPink",60000],
			["A3L_CVBlue",60000],
			["A3L_Taurus",90000],
			["A3L_TaurusBlack",90000],
			["A3L_TaurusBlue",90000],
			["A3L_TaurusRed",90000],
			["A3L_TaurusWhite",90000]

		];
	};
	case "dodge_car":
	{
		_return =
		[

			["A3L_GrandCaravan",70000],
			["A3L_GrandCaravanBlk",70000],
			["A3L_GrandCaravanBlue",70000],
			["A3L_GrandCaravanGreen",70000],
			["A3L_GrandCaravanRed",70000],
			["A3L_GrandCaravanPurple",70000],
			["A3L_Challenger",95000],
			["A3L_ChallengerGreen",95000],
			["A3L_ChallengerRed",95000],
			["A3L_ChallengerWhite",95000],
			["A3L_ChallengerBlack",95000],
			["A3L_ChallengerBlue",95000],
			["A3L_ChargerBlack",115000],
			["A3L_ChargerWhit",115000],
			["A3L_ChargerCstm",115000],
			["Jonzie_Viper",450000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["Jonzie_Mini_Cooper",10000],
			["B_Quadbike_01_F",5000],
			["A3L_Escort",12000],
			["A3L_EscortTaxi",12000],
			["A3L_EscortBlack",12000],
			["A3L_EscortBlue",12000],
			["A3L_EscortWhite",12000],
			["A3L_EscortPink",12000],
			["M1030",14000],
			["A3L_PuntoRed",18000],
			["A3L_PuntoBlack",18000],
			["A3L_PuntoWhite",18000],
			["A3L_PuntoGrey",18000],
			["A3L_RegalBlack",22000],
			["A3L_RegalBlue",22000],
			["A3L_RegalOrange",22000],
			["A3L_RegalRed",22000],
			["A3L_RegalWhite",22000],
			["A3L_JeepWhiteBlack",25000],
			["A3L_JeepGreenBlack",25000],
			["A3L_JeepRedTan",25000],
			["A3L_JeepRedBlack",25000],
			["A3L_JeepGrayBlack",25000],
			["A3L_VolksWagenGolfGTired",36000],
			["A3L_VolksWagenGolfGTiblack",36000],
			["A3L_VolksWagenGolfGTiblue",36000],
			["A3L_VolksWagenGolfGTiwhite",36000],
			["S_Rangerover_Black",85000],
			["S_Rangerover_Red",85000],
			["S_Rangerover_Blue",85000],
			["S_Rangerover_Green",85000],
			["S_Rangerover_Purple",85000],
			["S_Rangerover_Grey",85000],
			["S_Rangerover_Orange",85000],
			["S_Rangerover_White",85000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["A3L_F350Black",105000],
			["A3L_F350Blue",105000],
			["A3L_F350Red",105000],
			["A3L_F350White",105000],
			["A3L_Dumptruck",120000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",85000],
			["A3L_Bus",200000],
			["A3L_Towtruck",40000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",5000],
			["B_Heli_Light_01_F",800000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
			["IVORY_PRIUS",5000],
			["IVORY_REV",100000],
			
			["A3L_TaurusFPBCSO",25000],
			["A3L_TaurusFPBLBCSO",25000],
			["A3L_CVPIFPBCSO",45000],
			["A3L_CVPIFPBLBCSO",45000],
			["A3L_EvoXFPBLBSO",70000],
			["A3L_GrandCaravanUC",25000],
			["A3L_GrandCaravanUCBlack",25000],
			["A3L_SuburbanCSO",55000],
			
			
			["A3L_TaurusUCBlack",25000],
			["A3L_TaurusUCGrey",25000],
			["A3L_TaurusUCWhite",25000],
			["A3L_TaurusUCBlue",25000],
			["A3L_TaurusUCRed",25000],
			
			["A3L_CVPIUC",50000],
			
			["A3L_CVPIUCWhite",50000],
			
			["A3L_CVPIUCBlack",50000],
			
			["A3L_CVPIGrey",50000],
			
			["A3L_CVPIUCRed",50000],
			
			["A3L_CVPIUCPink",50000],
			
			["A3L_CVPIUCBlue",50000],
			
			["A3L_ChargerUC",60000],
			["A3L_ChargerUCWhite",60000],
			
			["A3L_jailBus",50000]
			

		];
	};
	case "civ_air":
	{
		_return =
		[
			["IVORY_T6A_1",300000],
			["C_Heli_Light_01_civil_F",300000],
			["ivory_b206",350000],
			["ivory_b206_news",400000],
			["IVORY_BELL512",500000],
			["O_Heli_Light_02_unarmed_F",750000],
			["IVORY_CRJ200_1",1000000],
			["IVORY_ERJ135_1",1000000],
			["IVORY_YAK42D_1",1000000]
		];
	};
	case "cop_air":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000],
			["B_Heli_Transport_01_F",200000],
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["O_Heli_Transport_04_covered_F",300000]
		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["ivory_b206_police",45000],
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["O_Heli_Light_02_unarmed_F",75000],
			["IVORY_BELL512_POLICE",85000],
			["I_Heli_Transport_02_F",100000],
			["I_Heli_light_03_unarmed_F",100000],
			["B_Heli_Transport_01_F",200000],
			["B_Heli_Transport_03_unarmed_F",300000],
			["O_Heli_Transport_04_F",300000],
			["IVORY_T6A_1",300000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",30000],
			["C_Boat_Civil_01_F",175000],
			["A3L_Ship",700000],
			["A3L_Jetski",150000],
			["A3L_Jetski_yellow",150000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
