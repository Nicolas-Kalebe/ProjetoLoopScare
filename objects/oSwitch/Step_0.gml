if(distance_to_object(oPlayer)<30 && keyboard_check_pressed(ord("F")) && !instance_exists(oLanterna)){
	instance_create_layer(x+60,y,"Lsombra",oLanterna)
}
if(distance_to_object(oPlayer)<30&& instance_exists(oLanterna) &&keyboard_check_pressed(ord("U"))){
	instance_destroy(oLanterna);
}