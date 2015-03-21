/*
	File: welcome.sqf
	Author: ZedBuster
        Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/


_imag  = "<img image='textures\a3l.jpg' size='10' align='center'/>"; _text = format["<br/><t color='#C5B6B5' size='1.8' align='center'>Welcome %1 to A3L!</t><br/><br/>",ProfileName];  
hint parseText (_imag + _text);

_onScreenTime = 3;

//if(life_firstSpawn) then {

playsound "medicalintro";
//}; 
sleep 2; //Wait in seconds before the credits start after player is in-game
_role1 = "Welcome to";
_role1names = ["Arma3Life"];       //Add your texts here!
_role2 = "Always be on TS";
_role2names = ["ts3.arma3-life.com"];
_role3 = "Rules";
_role3names = ["Follow the rules on the forums"];
_role4 = "Stay In-Character!";
_role4names = ["Don't go OOC! Have a problem? Report it."];
_role5 = "~ Admins ~";
_role5names = ["Are always watching you :)"];
_role6 = "Reminder";
_role6names = ["This is a BETA, there are bugs."];
_role7 = "Reminder 2";
_role7names = ["Have fun, de-stress and follow the rules"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.60' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

//The list below should have exactly the same amount of roles as the list above

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];
