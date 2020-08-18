///@desc Main VURS script
///@param Main Attribute
function VURS_script(argument0) {

	MAIN_ATTRIBUTE = argument0;

	AttackPower = MAIN_ATTRIBUTE;
	Health = clamp(STRENGTH,0,MAX_STRENGTH);
	Magic = clamp(ARCANE,0,MAX_ARCANE);


}
