class tabletmenu
{
idd = 12198;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""tabletmenu"", _this select 0]; tabletmenuisopen = 1;";
onunload = "tabletmenuisopen = 0;";
objects[] = { };
class controls {

class tabletbackground: RscPicture
{
	idc = 85441;
	text = "\A3L_Client2\tablet\samsungbg2.paa";
	x = 0.288594 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.417656 * safezoneW;
	h = 0.561 * safezoneH;
};
class tabletframe: RscPicture
{
	idc = 85442;
	text = "\A3L_Client2\tablet\samsungframe.paa";
	x = 0.288594 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.417656 * safezoneW;
	h = 0.561 * safezoneH;
};

class tablettime: RscStructuredText
{
	idc = 49284;
	text = "";
	x = 0.52 * safezoneW + safezoneX;
	y = 0.66 * safezoneH + safezoneY;
	w = 0.136562 * safezoneW;
	h = 0.0188889 * safezoneH;
};

//tablettext
class citynametext: RscStructuredText
{
	idc = 55210;
	text = "";
	x = 0.365626 * safezoneW + safezoneX;
	y = 0.32 * safezoneH + safezoneY;
	w = 0.170156 * safezoneW;
	h = 0.044 * safezoneH;
};
class Dateandyear: RscStructuredText
{
	idc = 55214;
	text = "";
	x = 0.365885 * safezoneW + safezoneX;
	y = 0.352 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.022 * safezoneH;
};
class weatherinfo: RscStructuredText
{
	idc = 55211;
	text = "";
	x = 0.364687 * safezoneW + safezoneX;
	y = 0.411556 * safezoneH + safezoneY;
	w = 0.175313 * safezoneW;
	h = 0.022 * safezoneH;
};
class weathertype: RscStructuredText
{
	idc = 55212;
	text = "";
	x = 0.365625 * safezoneW + safezoneX;
	y = 0.384037 * safezoneH + safezoneY;
	w = 0.170156 * safezoneW;
	h = 0.033 * safezoneH;
};
class grade: RscStructuredText
{
	idc = 55213;
	text = "";
	x = 0.366145 * safezoneW + safezoneX;
	y = 0.435 * safezoneH + safezoneY;
	w = 0.170156 * safezoneW;
	h = 0.055 * safezoneH;
};
class returnbutton: RscButtonSilent
{
	idc = 43101;
	text = "";
	x = 0.322625 * safezoneW + safezoneX;
	y = 0.66126 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.022 * safezoneH;
};
// APPBUTTONS
class appbutton1: RscButtonSilent
{
	idc = 85700;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 0; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 0; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 0; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton2: RscButtonSilent
{
	idc = 85701;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 1; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 1; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 1; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton3: RscButtonSilent
{
	idc = 85702;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 2; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 2; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 2; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton4: RscButtonSilent
{
	idc = 85703;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 3; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 3; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 3; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton5: RscButtonSilent
{
	idc = 85704;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 4; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 4; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 4; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton6: RscButtonSilent
{
	idc = 85705;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 5; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 5; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 5; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton7: RscButtonSilent
{
	idc = 85706;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 6; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 6; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 6; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton8: RscButtonSilent
{
	idc = 85707;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 7; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 7; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 7; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton9: RscButtonSilent
{
	idc = 85708;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 8; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 8; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 8; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton10: RscButtonSilent
{
	idc = 85709;
	text = "";
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 9; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 9; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 9; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton11: RscButtonSilent
{
	idc = 85710;
	text = "";
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 10; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 10; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 10; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton12: RscButtonSilent
{
	idc = 85711;
	text = "";
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 11; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 11; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 11; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton13: RscButtonSilent
{
	idc = 85712;
	text = "";
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 12; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 12; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 12; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton14: RscButtonSilent
{
	idc = 85713;
	text = "";
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 13; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 13; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 13; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton15: RscButtonSilent
{
	idc = 85714;
	text = "";
	x = 0.525781 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 14; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 14; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 14; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton16: RscButtonSilent
{
	idc = 85715;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 15; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 15; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 15; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton17: RscButtonSilent
{
	idc = 85716;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 16; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 16; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 16; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton18: RscButtonSilent
{
	idc = 85717;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 17; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 17; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 17; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton19: RscButtonSilent
{
	idc = 85718;
	text = "";
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 18; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 18; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 18; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton20: RscButtonSilent
{
	idc = 85719;
	text = "";
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 19; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 19; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 19; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton21: RscButtonSilent
{
	idc = 85720;
	text = "";
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 20; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 20; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 20; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton22: RscButtonSilent
{
	idc = 85721;
	text = "";
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 21; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 21; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 21; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton23: RscButtonSilent
{
	idc = 85722;
	text = "";
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 22; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 22; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 22; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton24: RscButtonSilent
{
	idc = 85723;
	text = "";
	x = 0.525781 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 23; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 23; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 23; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton25: RscButtonSilent
{
	idc = 85724;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 24; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 24; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 24; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton26: RscButtonSilent
{
	idc = 85725;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 25; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 25; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 25; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
class appbutton27: RscButtonSilent
{
	idc = 85726;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; _selectedapp = 26; [_selectedapp] call fnc_tabletbuttonclick; ";
	onMouseEnter = "_onmouse = 1; _appnumber = 26; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
	onMouseExit = "_onmouse = 0; _appnumber = 26; [_appnumber,_onmouse] call fnc_tabletbuttonenter;";
};
// APPICONPLACE
class app1: RscPicture
{
	idc = 85444;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app2: RscPicture
{
	idc = 85446;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app3: RscPicture
{
	idc = 85448;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app4: RscPicture
{
	idc = 85450;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app5: RscPicture
{
	idc = 85452;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app6: RscPicture
{
	idc = 85454;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app7: RscPicture
{
	idc = 85456;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app8: RscPicture
{
	idc = 85458;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app9: RscPicture
{
	idc = 85460;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app10: RscPicture
{
	idc = 85462;
	text = "";
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app11: RscPicture
{
	idc = 85464;
	text = "";
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app12: RscPicture
{
	idc = 85466;
	text = "";
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app13: RscPicture
{
	idc = 85468;
	text = "";
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app14: RscPicture
{
	idc = 85470;
	text = "";
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app15: RscPicture
{
	idc = 85472;
	text = "";
	x = 0.525781 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app16: RscPicture
{
	idc = 85474;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app17: RscPicture
{
	idc = 85476;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app18: RscPicture
{
	idc = 85478;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app19: RscPicture
{
	idc = 85480;
	text = "";
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app20: RscPicture
{
	idc = 85482;
	text = "";
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app21: RscPicture
{
	idc = 85484;
	text = "";
	x = 0.4175 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app22: RscPicture
{
	idc = 85486;
	text = "";
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app23: RscPicture
{
	idc = 85488;
	text = "";
	x = 0.489687 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app24: RscPicture
{
	idc = 85490;
	text = "";
	x = 0.525781 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app25: RscPicture
{
	idc = 85492;
	text = "";
	x = 0.561875 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app26: RscPicture
{
	idc = 85494;
	text = "";
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
class app27: RscPicture
{
	idc = 85496;
	text = "";
	x = 0.634062 * safezoneW + safezoneX;
	y = 0.577 * safezoneH + safezoneY;
	w = 0.020625 * safezoneW;
	h = 0.033 * safezoneH;
};
// APPTEXTPLACE
class apptext1: RscStructuredtext
{
	idc = 85445;
	text = "";
	x = 0.554688 * safezoneW + safezoneX;
	y = 0.348148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext2: RscStructuredtext
{
	idc = 85447;
	text = "";
	x = 0.590782 * safezoneW + safezoneX;
	y = 0.348148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext3: RscStructuredtext
{
	idc = 85449;
	text = "";
	x = 0.626875 * safezoneW + safezoneX;
	y = 0.348148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext4: RscStructuredtext
{
	idc = 85451;
	text = "";
	x = 0.554688 * safezoneW + safezoneX;
	y = 0.414148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext5: RscStructuredtext
{
	idc = 85453;
	text = "";
	x = 0.590782 * safezoneW + safezoneX;
	y = 0.414148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext6: RscStructuredtext
{
	idc = 85455;
	text = "";
	x = 0.626875 * safezoneW + safezoneX;
	y = 0.414148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext7: RscStructuredtext
{
	idc = 85457;
	text = "";
	x = 0.554688 * safezoneW + safezoneX;
	y = 0.480148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext8: RscStructuredtext
{
	idc = 85459;
	text = "";
	x = 0.590782 * safezoneW + safezoneX;
	y = 0.480148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext9: RscStructuredtext
{
	idc = 85461;
	text = "";
	x = 0.626875 * safezoneW + safezoneX;
	y = 0.480148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext10: RscStructuredtext
{
	idc = 85463;
	text = "";
	x = 0.338125 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext11: RscStructuredtext
{
	idc = 85465;
	text = "";
	x = 0.374219 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext12: RscStructuredtext
{
	idc = 85467;
	text = "";
	x = 0.410313 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext13: RscStructuredtext
{
	idc = 85469;
	text = "";
	x = 0.446407 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext14: RscStructuredtext
{
	idc = 85471;
	text = "";
	x = 0.4825 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext15: RscStructuredtext
{
	idc = 85473;
	text = "";
	x = 0.518594 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext16: RscStructuredtext
{
	idc = 85475;
	text = "";
	x = 0.554688 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext17: RscStructuredtext
{
	idc = 85477;
	text = "";
	x = 0.590782 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext18: RscStructuredtext
{
	idc = 85479;
	text = "";
	x = 0.626875 * safezoneW + safezoneX;
	y = 0.546148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext19: RscStructuredtext
{
	idc = 85481;
	text = "";
	x = 0.338125 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext20: RscStructuredtext
{
	idc = 85483;
	text = "";
	x = 0.374219 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext21: RscStructuredtext
{
	idc = 85485;
	text = "";
	x = 0.410313 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext22: RscStructuredtext
{
	idc = 85487;
	text = "";
	x = 0.446407 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext23: RscStructuredtext
{
	idc = 85489;
	text = "";
	x = 0.4825 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext24: RscStructuredtext
{
	idc = 85491;
	text = "";
	x = 0.518594 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext25: RscStructuredtext
{
	idc = 85493;
	text = "";
	x = 0.554688 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext26: RscStructuredtext
{
	idc = 85495;
	text = "";
	x = 0.590782 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
class apptext27: RscStructuredtext
{
	idc = 85497;
	text = "";
	x = 0.626875 * safezoneW + safezoneX;
	y = 0.612148 * safezoneH + safezoneY;
	w = 0.035052 * safezoneW;
	h = 0.0540741 * safezoneH;
};
};
};

class SyncMenu
{
idd = 12198;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""syncmenu"", _this select 0]; tabletmenuisopen = 1; [] spawn SOCK_fnc_syncData;";
onunload = "tabletmenuisopen = 0;";
objects[] = { };
class controls {
class background: RscPicture
{
	idc = 98294;
	text = "pics\other\syncmenu\Sync.paa";
	x = 0.288594 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.417656 * safezoneW;
	h = 0.561 * safezoneH;
};
class backbutton: RscButtonSilent
{
	idc = 51257;
	x = 0.452032 * safezoneW + safezoneX;
	y = 0.571444 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.033 * safezoneH;
	action = "closedialog 0; [] call fnc_opentablet;";
	colorBackground[] = {0.27,0.27,0.27,0.2};
};
};
};