/// @description create base variables and setting base for the draw function 
//vars for the spirits 
box			= s_textbox;
frame		= s_portrait_frame;
portrait	= s_portraits;
namebox		= s_namebox;

//getting dimensions for the boxes 
box_width		= sprite_get_width(box);
box_height		= sprite_get_height(box);
port_width		= sprite_get_width(portrait);
port_height		= sprite_get_height(portrait);
namebox_width	= sprite_get_width(namebox);
namebox_height	= sprite_get_height(namebox);

// position vars for the boxes
port_x	= (global.game_width - box_width - port_width) * 0.5;
port_y	= (global.game_height * 0.98) - port_height;
box_x	= port_x + port_width;
box_y	= port_y;
namebox_x	= port_x
namebox_y	= box_y - namebox_height;

//buffer for edge's text 
x_buffer = 12;
y_buffer = 8;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width/2);
name_text_y = namebox_y + (namebox_height/2);

//text wrapping 
text_max_width = box_width - (2*x_buffer);

//select portrait
portrait_index = 2;

//counter var for typewriterstyle texted
counter = 0;
pause = false

//next dialoge;
interact_key = ord("E");

//test vars for text- and nameboxes
text[0] = ""; 
 

//base vars to select page, name and sound 
page = 0;
name = "";
voice = text_sound;

//var for the color and fonts for the text
text_color = c_white;
name_text_col = c_white;
font = font_textbox;

//setting font and stringheight.
draw_set_font(font)
text_height = string_height("M")

//choice 
choice = 0;
choice_col = c_red;

