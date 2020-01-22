/// @description use the interact key to proced to the text array thats in create 

if(keyboard_check_pressed(interact_key)){
	
	if(!choice_dia and counter < str_len){ counter = str_len; }
	else if(page < array_length_1d(text) - 1){
		var line = next_line[page];
		if(choice_dia) line = line[choice];
		
		if(line == 0) page++;
		else if(line == -1){ instance_destroy(); exit;}
		else page = line;
		
		event_perform(ev_other, ev_user1);
		
	} else {
		instance_destroy();
	}
} 

if(choice_dia){
	choice += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	
	if (choice > text_array_len-1)choice = 0;
	if (choice < 0) choice = text_array_len-1;
	
}

 