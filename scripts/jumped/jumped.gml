///jumped();
if on_ground() jumps = jump_initial;
if jumps > 0 {
	state = states.JUMP;
	vsp = jump_sp;
	jumps -= 1;
	jump_dust();
}
