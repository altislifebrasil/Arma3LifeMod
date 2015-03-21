// TFR Variables API
tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;

// Server SetVariables
if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};

// Different depending on server
//tf_radio_channel_name = "ArmA 3 Life - US #1";
//tf_radio_channel_name = "ArmA 3 Life - EU #1";

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "ArmA 3 Life 0.2.2";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
