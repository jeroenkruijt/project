///player_idle_state();
//get_input
get_input();

//calc movement
calc_movement();

//check state
if hsp != 0 state = states.WALK;

if jump {
	jumped();
}

//apply movement
collision();

//apply animations
anim();