//@description fade_to_room(taeget_room, target_x, target_y, facing, color);
//@arg target_room
//@arg target_x
//@arg target_y
//@arg facing
//@arg color

var _fade = instance_create_layer(x,y,"Fade",o_fade)
with(_fade){
	target_rm	= argument0;
	target_x	= argument1;
	target_y	= argument2;
	facing		= argument3;
	col			= argument4;
}
