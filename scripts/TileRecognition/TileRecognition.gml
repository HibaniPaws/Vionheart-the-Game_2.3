#region Tile macros

	#macro GRASS layer_tilemap_get_id(layer_get_id("Grass"))
	#macro DIRT layer_tilemap_get_id(layer_get_id("Dirt"))
	#macro WATER layer_tilemap_get_id(layer_get_id("Water"))
	#macro LAB layer_tilemap_get_id(layer_get_id("Lab"))

#endregion

function TileRecognition() {
	var FEET = bbox_bottom;

		var GrassTile = tilemap_get_at_pixel(GRASS,x,FEET);
		var DirtTile = tilemap_get_at_pixel(DIRT,x,FEET);
		var WaterTile = tilemap_get_at_pixel(WATER,x,FEET);
		var LabTile = tilemap_get_at_pixel(LAB,x,FEET);

	OnTile = "VOID"; //Default- if standing on no tiles, OnTile variable will be set to "VOID".
	
	if (GrassTile > 0) {OnTile = "Grass";}
	if (DirtTile > 0) {OnTile = "Dirt";}
	if (WaterTile > 0) {OnTile = "Water";}
	if (LabTile > 0) {OnTile = "Lab";}
	


	return OnTile;
}
