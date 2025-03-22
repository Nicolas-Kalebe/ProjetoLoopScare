#region Atravessar porta
if(distance_to_object(oPlayer)<10 && keyboard_check_pressed(ord("W"))){
	fade_out_on=true;	
	audio_play_sound(doorOpening,1,0);
}
if (fade_out >= 1) {
		oControle.fade_in = true;
		room_goto(Room2); // Exemplo: troca de sala
}
#endregion