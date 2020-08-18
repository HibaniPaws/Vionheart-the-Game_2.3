function TileRegister() {
	var FEET = bbox_bottom;

	//ReturnTileIndex("Land",x,Feet);

	//if (tilemap_get_at_pixel(WATER_LAYER,x,FEET)) {OnTile = "Water";}
	//if (tilemap_get_at_pixel(LAND_LAYER,x,FEET)) {OnTile = "Land";}

	//var Tile = LAND_LAYER;

	var Tile = tilemap_get_at_pixel(TILES,x,FEET);

	switch (Tile)
	{
		case 1: OnTile = "Grass"; break;
		case 8: OnTile = "Dirt"; break;
		case 13: OnTile = "Water"; break;

	}

	return OnTile;


}
