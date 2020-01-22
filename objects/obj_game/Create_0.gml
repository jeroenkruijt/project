/// @description base vars and globals for the game 
//macros
macros();

//graviti 
global.grav = 0.25;

// tiles
//get tile map
global.map = layer_tilemap_get_id("Collisions");
global.tile_size = 32;

//global vars for the viewport thats being set in the rooms 
global.game_width = 720;
global.game_height = 450;