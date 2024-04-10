switch (room)
{
case Room1:
    draw_set_halign(fa_center);
    var c = c_purple;
    draw_text_transformed_colour(room_width / 2+100, 300, "‘[T[H[R[O[U[G[H] [T[H[E] [C[O[R[R[I[D[O[R]'", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 400, 
    @" Make your way towards the light at the end of the corridor 
	
	Click Enter to begin!
	
	TRY AND MAKE IT WITHOUT FALLING INTO THE VOID|");
    draw_set_halign(fa_left);
    break;

case Room2:
    draw_set_halign(fa_center);
    var c = c_purple;
    draw_text_transformed_colour(room_width / 2+100, 300, "‘[T[H[R[O[U[G[H] [T[H[E] [C[O[R[R[I[D[O[R]'", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 400, 
    @" Make your way towards the light at the end of the corridor 
	
	Click Enter to begin!
	
	TRY AND MAKE IT WITHOUT FALLING INTO THE VOID|");
    draw_set_halign(fa_left);
    break;
}