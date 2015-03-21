class halloweenshop {
	idd = 5546;
	name= "a3l_jail_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "uiNamespace setVariable [""halloweenshop"", _this select 0];";
	objects[] = { };
	class controls {
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Zannaza, v1.337, #YOLO)
////////////////////////////////////////////////////////
// \A3L_Client2\images\
class bg: RscPicture
{
	idc = 1200;
	text = "\A3L_Client2\images\halloweenmenu.paa";
	x = 0.288594 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.417656 * safezoneW;
	h = 0.561 * safezoneH;
};
class selection: RscCombo
{
	idc = 55125;
	x = 0.435 * safezoneW + safezoneX;
	y = 0.326667 * safezoneH + safezoneY;
	w = 0.126927 * safezoneW;
	h = 0.022 * safezoneH;
	onLBSelChanged = "[] call fnc_updatehalshop;";
};
class listbox: RscListbox
{
	idc = 55126;
	x = 0.435 * safezoneW + safezoneX;
	y = 0.348667 * safezoneH + safezoneY;
	w = 0.127187 * safezoneW;
	h = 0.274444 * safezoneH;
};
class buybutton: RscButtonSilent
{
	idc = 55127;
	x = 0.434896 * safezoneW + safezoneX;
	y = 0.632407 * safezoneH + safezoneY;
	w = 0.127708 * safezoneW;
	h = 0.0401851 * safezoneH;
	action = "[] call fnc_buyitem";
};

};
};