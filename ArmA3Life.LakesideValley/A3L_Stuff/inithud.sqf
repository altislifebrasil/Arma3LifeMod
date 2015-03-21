// command to open HUD:  "cutRsc ["a3lhud", "PLAIN"];"
 
while {true} do {
sleep 0.01;
_playerhealth = getdammage player;
_playerstamina = getfatigue player;
_playerhunger = life_hunger;
_playerthirst = life_thirst;
 
_healthcolor = "#00FF4C";
_hungercolor = "#00FF4C";
_thirstcolor = "#00FF4C";
_staminacolor = "#00FF4C";
_magcolor = "#FFFFFF";
_ammocolor = "#FFFFFF";
_hungertext = parseText format[""];
_thirsttext = parseText format[""];
_healthtext = parseText format[""];
_zeroingtext = parseText format[""];
_staminatext = parseText format[""];
_ammotext = parseText format[""];
_amountmagtext = parseText format[""];
_weaponname = parseText format[""];
_hudinfo = weaponState player; // ["arifle_MX_ACO_pointer_F","arifle_MX_ACO_pointer_F","Single","30Rnd_65x39_caseless_mag",30]
_curweapon = _hudinfo select 0;
_curmagazine = _hudinfo select 4;
_className = _hudinfo select 3;
_gunmodeold = _hudinfo select 2;
_gunmode = "";
if ((_gunmodeold == "single") or (_gunmodeold == "FullAuto")) then {
_gunmode = _gunmodeold;
if (_gunmodeold == "single") then {_gunmode = "Single"};
if (_gunmodeold == "FullAuto") then {_gunmode = "Automatic"};
};
 
_magforpic = "";
if (_curweapon != "") then {
_magforpic = (getArray (configFile >> "CfgWeapons" >> _curweapon >> "magazines")) select 0;
};
_picture = "";
_picture = getText (configFile >> "CfgMagazines" >> _magforpic >> "picture");
_nameofPlayer = name player;
_noweaponsarray = ["","","","",0];
_nothing = _noweaponsarray select 0;
if (_nothing == _curweapon) then {
} else {
 
_zeroing = currentZeroing player;
 
_magazineClass = currentMagazine player;
_weaponname = getText (configFile >> "CfgWeapons" >> _curweapon >> "displayName");
_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count") ;
_prcentammo = 0;
if (_curmagazine == 0) then {
_prcentammo = 0;
} else {
_prcentammo = (_curmagazine / _maxammo) * 100;
};
 
_amountmag = {_x == (currentmagazine player)} count magazines player;
if (_amountmag == 0) then {
        _amountmagtext = parseText format["I'm out of mags"];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag == 1) then {
        _amountmagtext = parseText format["I have %1 magazine left.", _amountmag];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag > 1) then {
        _amountmagtext = parseText format["I have %1 magazines left.", _amountmag];
                _magcolor = "#FFFFFF";
};};};
       
if (_prcentammo == 0) then {
        _ammotext = parseText format["I think I'm out of ammo."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 20) then {
        _ammotext = parseText format["Feels like I'm almost empty."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 40) then {
        _ammotext = parseText format["Might want to check the ammo count."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 60) then {
        _ammotext = parseText format["The magazine feels half empty."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 80) then {
        _ammotext = parseText format["I have enough ammo."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 100) then {
        _ammotext = parseText format["I still have plenty of rounds."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo == 100) then {
        _ammotext = parseText format["Magazine is full of ammo."];
                _ammocolor = "#FFFFFF";
};};};};};};};
 
if (_zeroing == 0) then {
                _zeroingtext = parseText format[""];
        } else {
                _zeroingtext = parseText format["Zeroing: %1M", _zeroing];
};
 
 
};  
 
if (_playerhealth < 0.10) then {
                _healthcolor = "#00FF4C";
                _healthtext = parseText format["Very Healthy"];
        } else {
        if (_playerhealth < 0.20) then {
                _healthcolor = "#1AFF00";
                _healthtext = parseText format["A few scratches"];
        } else {
        if (_playerhealth < 0.30) then {
                _healthcolor = "#7BFF00";
                _healthtext = parseText format["Slightly injured"];
        } else {
        if (_playerhealth < 0.40) then {
                _healthcolor = "#BFFF00";
                _healthtext = parseText format["Not feeling well"];
        } else {
        if (_playerhealth < 0.50) then {
                _healthcolor = "#EAFF00";
                _healthtext = parseText format["Starting to feel pain"];
        } else {
        if (_playerhealth < 0.60) then {
                _healthcolor = "#FFBF00";
                _healthtext = parseText format["I feel pain"];
        } else {
        if (_playerhealth < 0.70) then {
                _healthcolor = "#FF8400";
                _healthtext = parseText format["Something must be broken"];
        } else {
        if (_playerhealth < 0.80) then {
                _healthcolor = "#FF4000";
                _healthtext = parseText format["Horribly injured"];
        } else {
        if (_playerhealth < 0.90) then {
                _healthcolor = "#FF0000";
                _healthtext = parseText format["Extremely injured"];
        } else {
        if (_playerhealth == 1) then {
                _healthcolor = "#590000";
                _healthtext = parseText format["Dead</t>"];
};};};};};};};};};};
 
if (_playerhunger > 90) then {
                _hungercolor = "#00FF4C";
                _hungertext = parseText format["I'm not hungry"];
        } else {
        if (_playerhunger > 80) then {
                _hungercolor = "#1AFF00";
                _hungertext = parseText format["Not hungry at all"];
        } else {
        if (_playerhunger > 70) then {
                _hungercolor = "#7BFF00";
                _hungertext = parseText format["Could use some crackers"];
        } else {
        if (_playerhunger > 60) then {
                _hungercolor = "#BFFF00";
                _hungertext = parseText format["Might need something soon"];
        } else {
        if (_playerhunger > 50) then {
                _hungercolor = "#EAFF00";
                _hungertext = parseText format["Stomach is feeling empty"];
        } else {
        if (_playerhunger > 40) then {
                _hungercolor = "#FFBF00";
                _hungertext = parseText format["I should eat soon"];
        } else {
        if (_playerhunger > 30) then {
                _hungercolor = "#FF8400";
                _hungertext = parseText format["My stomach is grumbling"];
        } else {
        if (_playerhunger > 20) then {
                _hungercolor = "#FF4000";
                _hungertext = parseText format["I need to eat now"];
        } else {
        if (_playerhunger > 10) then {
                _hungercolor = "#FF0000";
                _hungertext = parseText format["Starvation is kicking in"];
        } else {
        if (_playerhunger == 0) then {
                _hungercolor = "#590000";
                _hungertext = parseText format["Dead</t>"];
};};};};};};};};};};
 
if (_playerthirst > 80) then {
                _thirstcolor = "#1AFF00";
                _thirsttext = parseText format["Not thirsty"];
        } else {
        if (_playerthirst > 70) then {
                _thirstcolor = "#7BFF00";
                _thirsttext = parseText format["Could use a glass of water"];
        } else {
        if (_playerthirst > 60) then {
                _thirstcolor = "#BFFF00";
                _thirsttext = parseText format["Should drink something soon"];
        } else {
        if (_playerthirst > 50) then {
                _thirstcolor = "#EAFF00";
                _thirsttext = parseText format["Throat is a little dry"];
        } else {
        if (_playerthirst > 40) then {
                _thirstcolor = "#FFBF00";
                _thirsttext = parseText format["I should drink soon"];
        } else {
        if (_playerthirst > 30) then {
                _thirstcolor = "#FF8400";
                _thirsttext = parseText format["My throat is dry"];
        } else {
        if (_playerthirst > 20) then {
                _thirstcolor = "#FF4000";
                _thirsttext = parseText format["I should drink now"];
        } else {
        if (_playerthirst > 10) then {
                _thirstcolor = "#FF0000";
                _thirsttext = parseText format["Dehydration Feels Horrible"];
        } else {
        if (_playerthirst == 0) then {
                _thirstcolor = "#590000";
                _thirsttext = parseText format["DEAD</t>"];
};};};};};};};};};
 
if (_playerstamina < 0.10) then {
                _staminacolor = "#00FF4C";
                _staminatext = parseText format["Fully energized"];
        } else {
        if (_playerstamina < 0.20) then {
                _staminacolor = "#1AFF00";
                _staminatext = parseText format["Can run forever"];
        } else {
        if (_playerstamina < 0.30) then {
                _staminacolor = "#BFFF00";
                _staminatext = parseText format["Starting to feel tired"];
        } else {
        if (_playerstamina < 0.40) then {
                _staminacolor = "#EAFF00";
                _staminatext = parseText format["I need a break"];
        } else {
        if (_playerstamina < 0.50) then {
                _staminacolor = "#FF8400";
                _staminatext = parseText format["Should really stop for a break"];
        } else {
        if (_playerstamina < 0.60) then {
                _staminacolor = "#FF4000";
                _staminatext = parseText format["Exhaustion is starting"];
        } else {
        if (_playerstamina > 0.59) then {
                _staminacolor = "#590000";
                _staminatext = parseText format["I am exhausted"];
};};};};};};};
 
 
_playerstatustext = parseText format ["<t font='EtelkaNarrowMediumPro' size='1' align='right'><t color='%1'>%2</t> | <t color='%3'>%4</t> | <t color='%5'>%6</t> | <t color='%7'>%8</t></t>", _healthcolor, _healthtext, _staminacolor, _staminatext, _hungercolor, _hungertext, _thirstcolor, _thirsttext];
_playernametext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1.3' align='right'>%1</t>", _nameofplayer];
// _zeroinghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#949494' size='1' align='left'>%1</t>", _zeroingtext];
_ammohudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='0.9' align='left'>%2</t>",_ammocolor, _ammotext];
_maghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='1' align='left'>%2</t>", _magcolor, _amountmagtext];
_gunmodetext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1' align='center'>%1</t>", _gunmode];
 
_weapontexthud = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1' align='left'>%1</t>", _weaponname];
((uiNamespace getVariable "a3lhud") displayCtrl 41652) ctrlSetStructuredText _playerstatustext;
((uiNamespace getVariable "a3lhud") displayCtrl 16418) ctrlSetText _picture;
((uiNamespace getVariable "a3lhud") displayCtrl 62362) ctrlSetStructuredText _playernametext;
// ((uiNamespace getVariable "a3lhud") displayCtrl 16423) ctrlSetStructuredText _zeroinghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16422) ctrlSetStructuredText _ammohudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16419) ctrlSetStructuredText _gunmodetext;
((uiNamespace getVariable "a3lhud") displayCtrl 16421) ctrlSetStructuredText _maghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16420) ctrlSetStructuredText _weapontexthud;
 
};