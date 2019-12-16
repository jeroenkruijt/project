///player_jump_state();
//get_input
get_input();

//calc movement
calc_movement();

//check state
if on_ground(){
	if hsp != 0 state = states.WALK else state= states.IDLE;		
	// creates land effect
	if vsp>0{
		instance_create_layer(x, y, "Dust", obj_player_land);
	}
}

//enable double jump
if jump {
	jumped();	
}

//enable small jump
if vsp < 0 and !jump_held vsp = max(vsp, jump_sp/jump_dampner);

//apply movement
collision();

//apply animations
anim();