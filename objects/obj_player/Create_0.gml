/// @description variabless for the player
// variable speed 
hsp = 0;
vsp = 0;
max_hsp = 5;
walk_sp = 1.5;
hsp_decimal = 0;
vsp_decimal = 0;
jump_sp = -10;
jump_dampner = 2.5;
jump_initial = 1;  
jumps = jump_initial;

// friction/drag
drag = .12;

//facing direction 
facing = 1;

//movement 
left = 0;
right = 0;
up =  0;
down = 0;
jump = 0;
jump_held = 0;

//states 
enum states {
	IDLE,
	WALK,
	JUMP,
	JOY
	
}

state = states.IDLE;

//create states array
states_array[states.IDLE]		= player_idle_state;
states_array[states.WALK]		= player_walk_state;
states_array[states.JUMP]		= player_jump_state;
states_array[states.JOY]		= player_joy_state;

//create sprites array
sprites_array[states.IDLE]		= s_player_idle;
sprites_array[states.WALK]		= s_player_walking;
sprites_array[states.JUMP]		= s_player_jump;
sprites_array[states.JOY]		= s_player_joy