/// @description
#region Trashed code
	//enum ItemType
	//{
	//	weapon,
	//	item,
	//	passive
	//}

	//enum WeaponProperties
	//{
	//	use_time,
	//	backswing,
	//	range,
	//	height = 3
	//}

	//ItemID[0] = "Dagger1";
	//ItemID[1] = "Sword1";
	//ItemID[2] = "Wand1";

	//ItemAmount = array_length_1d(ItemID);
	//Item = ds_grid_create(WeaponProperties.height,ItemAmount);
#endregion

scr_add_weapon("sword1", ItemId.sword, "number one", "0.5 sec", 0, 0, 0)
scr_add_weapon("dagger1", ItemId.dagger, "number one", "0.5 sec", 0, 0, 0)
scr_add_weapon("wand1", ItemId.wand, 0, 0, 0, 0, 0)