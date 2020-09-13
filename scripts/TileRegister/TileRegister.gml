function TileRegister() {
	var FEET = bbox_bottom;
	var Tile = tilemap_get_at_pixel(TILES,x,FEET);
	// >>May update in the future to allow miltiple tilesets.

	switch (Tile)
	{
		default: OnTile = "NONE"; break;
		case 1: OnTile = "Grass"; break;
		case 2: OnTile = "Dirt"; break;
		case 3: OnTile = "Water"; break;

	}
	
	if (!Tile) {OnTile = "VOID";}

	return OnTile;

}
