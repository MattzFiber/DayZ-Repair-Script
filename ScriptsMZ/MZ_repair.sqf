private ["_object","_type","_OldFuel"];
_object = _this select 0;
_type = typeof _object;
_OldFuel = fuel _object;
_object engineOn false;
if (_object isKindOf "ParachuteBase") exitWith {};
if (!alive _object) exitWith {};
_object vehicleChat format ["Repairing %1... Please stand by...", _type];
sleep 6;
_object setFuel 0;
_object setDamage 0;	// Fix Vehicle
sleep 5;
_object vehicleChat format ["This does take time... Please stand by...", _type];
sleep 9;
_object vehicleChat format ["Please prepare...", _type];
sleep 12;
_object setFuel _Oldfuel;
_object vehicleChat format ["%1 has been repaired... It is now safe to leave...", _type];
if (true) exitWith {};