/// @description draw everyrthing that needs to be needed in the game for textsystem 
//draw box e
draw_sprite(box, 0, box_x, box_y);

//draw portrait back
draw_sprite(frame, 0, port_x, port_y);

//draw portrait 
draw_sprite(portrait, portrait_index, port_x, port_y)

//draw portrait frame
draw_sprite(frame, 1, port_x, port_y);

//draw namebox
draw_sprite(namebox, 0, namebox_x, namebox_y);

// ---------text for the the textbox 
//namebox alignment 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw name
var c = name_text_col
draw_text_color(name_text_x, name_text_y, name, c, c, c, c, 1);

//text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(!choice_dia){

	// to incremed the counter and add the soundeffect
	if(!pause and counter < str_len){
		counter++;
		if(counter mod 4 == 0){
			audio_play_sound(voice, 10, false);	
		}
		switch(string_char_at(text_wrapped, counter)){
			case ",": pause = true; alarm[1] = 15; break;
			case ".": ;
			case "?": ;
			case "!": pause = true; alarm[1] = 25; break;
		}
	}

	//copy the string to make it possible to display the typiting.
	var substr = string_copy(text_wrapped, 1, counter);

	//draw the text 
	c = text_color;
	draw_text_color(text_x, text_y, substr, c, c, c, c, 1);
	
} else {
	c = text_color
	
	var i = 0, y_add = 0; repeat(text_array_len){
		if(choice == i){c = choice_col; draw_text_color(box_x+text_max_width, text_y+y_add, "<", c,c,c,c,1);}
		else c = text_color;
		
			
		draw_text_ext_color(text_x, text_y+y_add, text_array[i], text_height, text_max_width, c, c, c, c, 1);
		y_add += string_height_ext(text_array[i], text_height, text_max_width);
		i++
	}
	
}