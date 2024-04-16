if (keyboard_check_pressed(vk_enter))
{
switch(room)
    {
    case Room2:
        room_goto(Room1);
        break;
	}
}

if (keyboard_check_pressed(vk_backspace))
{
	room_goto(Room3);
	
}

