/// @description
portrait_index = 4;
voice = text_sound;
name = "female";
text = [
		"Salut, can you do me a favor?",
		[
			"Yes how can I help you?", 
			"No"
		],
		"Could you tell the boy in the back that the guest that reserved table 4 is coming a little bit later?",
		"Children these days have no manners.",
		"Thinking: I could have been nicer to her"
		];
speakers = [id, obj_player, id, id, obj_player];
next_line = [0, [2, 3], -1, 4, -1];