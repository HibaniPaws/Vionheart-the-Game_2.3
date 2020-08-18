function TileRegister() {
	var FEET = bbox_bottom;
	var Tile = tilemap_get_at_pixel(TILES,x,FEET);
	// >>May update in the future to allow miltiple tilesets.

	switch (Tile)
	{
		case 1: OnTile = "Grass"; break;
		case 8: OnTile = "Dirt"; break;
		case 13: OnTile = "Water"; break;

	}

	return OnTile;

}
