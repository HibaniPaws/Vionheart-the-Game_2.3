///(first game's script)
///@description rtrnTileIndex
///@arg layer_to_check
///@arg x_to_check
///@arg y_to_check
function ReturnTileIndex(argument0, argument1, argument2) {

	// first get the id of specific tile layer
	var layerID = layer_get_id(argument0);

	// then get the id of the tile map being used
	var tilemapID = layer_tilemap_get_id(layerID);

	// check the x coordinate of the tile
	var cellX = tilemap_get_cell_x_at_pixel(tilemapID,argument1,argument2);

	// check the y of the tile
	var cellY = tilemap_get_cell_y_at_pixel(tilemapID,argument1,argument2);

	// get the tile data of the map, none of which we need but 1 thing :-(
	var tileData = tilemap_get(tilemapID, cellX, cellY);

	// find out the index of the tile from the data
	var tileIndex = tile_get_index(tileData);

	// return true if the tile is anything but an empty tile comment out to search for tile index
	//if (tileIndex > 0) {
	//    return true;
	//} else return false;

	// uncomment to search for tile index
	return tileIndex;


}
