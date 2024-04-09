if (keyboard_check_pressed(vk_enter))
{
switch(room)
    {
    case Room2:
        room_goto(Room1);
        break;
	}
}

if (!place_meeting(x, y, [oPlayer, oDoor]))
{
    switch(room)
    {
    case Room1:
        room_goto(Room3);
        break;
	}
}