//alarme que toca o som quando o texto esta sendo escrito.

if(caractere < string_length(texto[pagina])){
	var _snd = choose(_1,_2,_3,_4,_5)
	audio_play_sound(_snd,1,0)
}
alarm[1]=16;