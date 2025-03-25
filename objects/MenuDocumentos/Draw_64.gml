draw_set_color(c_black);

//draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),0);


var tamanhoDaLista = ds_list_size(oDocumentosColetados.DocEncontrados);
var _guix = display_get_gui_width()/2;
var _guiy = display_get_gui_height()/2;
var _espacamento = 30;
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_sprite_ext(documentosmenu1,0,0,0,1,1,0,c_white,1)

draw_set_font(fonteMenu);
draw_set_color(c_white);
draw_set_halign(fa_center);

for (var i=0;i<tamanhoDaLista;i++){
	var listaDeDocumentos = ds_list_find_value(oDocumentosColetados.DocEncontrados,i);
	draw_text(_guix,_guiy- 150 + i*_espacamento, listaDeDocumentos)

}

