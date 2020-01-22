/// @description

input_interact = keyboard_check_pressed(ord("E"));

// excute state 
if !instance_exists(o_fade){
	script_execute(states_array[state]);
} else {
	image_index = 0;
}

//textbox
if(input_interact){
	
	if(active_textbox == noone){
	
		var inst = collision_rectangle(x-radius, y-radius, x+radius, y+radius, obj_text_npc, false, false);
	
		if(inst != noone){
			with(inst){
				var tbox = create_textbox(text, speakers, next_line);
			}
			active_textbox = tbox
		}
	} else {
		if(!instance_exists(active_textbox)){
			active_textbox = noone;
		}
	}
}
	

