if(instance_number(obj_brick) <= 0){
	room_restart();
}

if(gameover){
	if(keyboard_check_pressed(vk_anykey)){
		room_restart();	
		score = 0
		lives = 3
	}
}