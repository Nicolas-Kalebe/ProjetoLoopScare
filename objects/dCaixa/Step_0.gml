if (global.dialogando == false && distance_to_object(oPlayer)<5 
&& keyboard_check_pressed(ord("F"))){
	
	var _documento = instance_create_layer(x,y,"lDocumento",oDocumento)
	_documento.img_documento = "documento1";
	
}
