if(distance_to_object(oPlayer)<10 && keyboard_check_pressed(ord("W"))){
	fade_out_on=true;	
}
if (fade_out >= 1) {
		room_goto(Room2); // Exemplo: troca de sala
}