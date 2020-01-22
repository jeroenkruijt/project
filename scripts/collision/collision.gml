///collision();
if hsp == 0 hsp_decimal = 0;
if vsp == 0 vsp_decimal = 0;

// apply carried over decimals 
hsp += hsp_decimal;
vsp += vsp_decimal;

//floor decimals
//save and subtract decimals
hsp_decimal = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_decimal;
vsp_decimal = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_decimal;

//horizental collision;
var side;
//determine which side to test
if hsp > 0 side = bbox_right else side = bbox_left;

//check top and bottom of the side
var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);

if ((t1 != VOID) and (t1 != PLATFORM)) or 
   ((t2 != VOID) and (t2 != PLATFORM)){
	//collision found
	if (hsp > 0) x = x - (x mod global.tile_size) + global.tile_size - 1 - (side - x);
	else x = x - (x mod  global.tile_size) - (side - x);
	hsp = 0;
}
x += hsp;

//vertical collision
var side;
//determine which side to test
if vsp > 0 side = bbox_bottom else side = bbox_top;
 
//check left and right side
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
var t3 = tilemap_get_at_pixel(global.map, bbox_left, bbox_bottom);
var t4 = tilemap_get_at_pixel(global.map, bbox_right, bbox_bottom);

 
if ((t1 != VOID and (vsp > 0 or t1 != PLATFORM)) and (t3 != PLATFORM)) or
   ((t2 != VOID and (vsp > 0 or t2 != PLATFORM)) and (t4 != PLATFORM)){
	//collision found
	if (vsp > 0) {
		//Moving down so get collision tiles bbox_top and move flush on top of it
		var t1y = tilemap_get_cell_y_at_pixel(global.map, bbox_left, side + vsp);
		var t2y = tilemap_get_cell_y_at_pixel(global.map, bbox_right, side + vsp);
		//tile_bbox_top is the smallest y position times the tile size
		//as we are moving down and want the highest tile we can collide with
		var tile_bbox_top = (min(t1y, t2y)) * global.tile_size;			
		y = tile_bbox_top - 1 - (side - y);
	}	else {
		//Moving up so get collision tiles bbox_bottom and move flush up to it
		var t1y = tilemap_get_cell_y_at_pixel(global.map, bbox_left, side + vsp);
		var t2y = tilemap_get_cell_y_at_pixel(global.map, bbox_right, side + vsp);
		//tile_bbox_bottom is the biggest y position + 1, times the tile size
		//as we are moving up and want the lowest tile we can collide with
		var tile_bbox_bottom = (max(t1y, t2y) + 1) * global.tile_size;		
		y = tile_bbox_bottom - (side - y);
	}
	vsp = 0;
}
y += vsp;