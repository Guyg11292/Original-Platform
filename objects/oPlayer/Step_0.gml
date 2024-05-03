/// @desc Core Player Logic

// Get player Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

// Jump

if(place_meeting(x,y+1,oWall)) && (key_jump){
	currjumps = 0;
}

if (key_jump && (currjumps < maxjumps)) {
	vsp = -jumpsp;
	currjumps += 1;
} 
//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if(place_meeting(x,y+1,oWall)) && (key_jump){
	currjumps = 0;
}
if(place_meeting(x,y+vsp,oKey2))
{
	points += 1;
	instance_destroy(oKey2)
}

if(place_meeting(x,y+hsp,oKey2))
{
	points += 1;
	instance_destroy(oKey2)
}	
if(place_meeting(x,y+hsp,oKey2))
{
	points += 1;
	instance_destroy(oKey2)
}	

if (points == 1){
	room_goto(Room3)
}
if (points == 2){
	room_goto(Room4)
}
if(place_meeting(x,y+hsp,Enemy_1))
{
	instance_destroy(Enemy_1)
}