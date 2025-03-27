if(global.pause==true){
	exit;
}

if (global.dialogando == false && distance_to_object(oPlayer) < 5 && keyboard_check_pressed(ord("F"))) {
    
    var _documento = instance_create_layer(x, y, "lDocumento", oDocumento);
    _documento.img_documento = "Carta Do Dev";

    if (ds_list_find_index(oDocumentosColetados.DocEncontrados, "Carta Do Dev") == -1) {
        ds_list_add(oDocumentosColetados.DocEncontrados, "Carta Do Dev");
    }
}
