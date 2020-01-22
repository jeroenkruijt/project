/// @description 
//
var dw = display_get_gui_width();
var dh = display_get_gui_height();

//fading to colour
if fade_to_colour {
	alpha += fade_sp;
	draw_set_alpha(alpha);
	draw_rectangle_color(0, 0, dw, dh, col, col, col, col, false);
	if alpha >= 1 {
		fade_to_colour = false;
		with(obj_player){ 
			//set position player
			room_start_pos_x = other.target_x;
			room_start_pos_y = other.target_y;
			x = room_start_pos_x;
			y = room_start_pos_y;
			
			//set facing
			room_start_facing = other.facing;
			facing = room_start_facing;
			
			//reset vars
			hsp = 0;
			vsp = 0;
			hsp_decimal = 0;
			vsp_decimal = 0;
			scale_x = 1;
			scale_y = 1;
			
			//reset animation
			state = states.IDLE
			anim();
				
		}
		
			room_goto(target_rm);
			
	}
} else {
	
	alpha -= fade_sp;
	draw_set_alpha(alpha);
	draw_rectangle_color(0, 0, dw, dh, col, col, col, col, false);
	if alpha <= 0 {
		instance_destroy();
		
	}
}
draw_set_alpha(1);
	