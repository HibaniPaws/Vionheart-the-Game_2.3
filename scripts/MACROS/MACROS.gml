function MACROS() {
	
	//Developer Mode
#macro DEVELOPER_MODE false
#macro Developer:DEVELOPER_MODE true

#macro CELL_WIDTH 16
#macro CELL_HEIGHT 16

	//Layers
#macro ROOF_LAYER layer_create(-2,"Roof")
#macro ITEM_LAYER layer_create(-1,"Items")
#macro ENEMY_LAYER layer_create(0,"Enemies")
#macro PLAYER_LAYER layer_create(1,"Player")
#macro LAND_LAYER layer_tilemap_get_id(layer_get_id("Land"))
#macro WATER_LAYER layer_tilemap_get_id(layer_get_id("Water"))
#macro HIDDEN layer_create(4, "Hidden")

#macro TILES layer_tilemap_get_id(layer_get_id("Tiles"))

	//Tiles
#macro GRASS_TILE tile_get_index()

	//Directions
	//Last direction before going idle.
#macro MOVING_LEFT MoveX<0
#macro MOVING_RIGHT MoveX>0
#macro MOVING_UP MoveY<0
#macro MOVING_DOWN MoveY>0

#macro NOANIMATION spr_AnimationIsMissing


}
