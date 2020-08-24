// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum Item
{
	none,
	dagger1,
	sword1,
	wand1,
	heal1,
	total
}

enum Item_stat
{
	name,
	description,
	type,
	passive_bonus,
	total
}

enum Item_type
{
	none,
	dagger,
	sword,
	wand,
	consumable,
	total
}

global.item_info = ds_grid_create(Item.total, Item_stat.total)
global.inventory_size = 16















