/// @description



enum ItemType
{
	weapon,
	item,
	passive
}

enum WeaponProperties
{
	use_time,
	backswing,
	range,
	height = 3
}

ItemID[0] = "Dagger1";
ItemID[1] = "Sword1";
ItemID[2] = "Wand1";

ItemAmount = array_length_1d(ItemID);
Item = ds_grid_create(WeaponProperties.height,ItemAmount);