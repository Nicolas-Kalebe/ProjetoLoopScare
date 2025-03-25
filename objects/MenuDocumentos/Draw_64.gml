draw_set_color(c_black);
//draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

var _guix = display_get_gui_width() / 2;
var _guiy = display_get_gui_height() / 2;
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

// Calcular a altura total da lista

// Limitar o scroll para não rolar demais, com margem extra de 50 pixels
var _scrollMax = max(0, _alturaTotalLista - display_get_gui_height() + 50);
scroll_offset = clamp(scroll_offset, 0, _scrollMax);

draw_sprite_ext(documentosmenu1, 0, 0, 0, 1, 1, 0, c_white, 1);
draw_set_font(fonteMenu);
draw_set_halign(fa_center);

for (var i = 0; i < tamanhoDaLista; i++) {
    var listaDeDocumentos = ds_list_find_value(oDocumentosColetados.DocEncontrados, i);
    var _strW = string_width(listaDeDocumentos);
    var _strH = string_height(listaDeDocumentos);
    var _posY = _guiy - 150 + i * _espacamento - scroll_offset;

    // Verifica se o item está visível na tela
    if (_posY > -_espacamento && _posY < display_get_gui_height()) {
        var mouse_sobre = point_in_rectangle(_mx, _my, _guix - _strW / 2, _posY + 5, _guix + _strW / 2, _posY + _strH - 3);

        // Selecionar com o mouse
        if (mouse_sobre && mouse_check_button_pressed(mb_left)) {
            indice_selecionado = i;
            show_debug_message("Selecionado: " + listaDeDocumentos);
			var _documento = instance_create_layer(x,y,"lDocumento",oDocumento)
			_documento.img_documento = listaDeDocumentos;
        }
		
		
		

        // Destacar opção selecionada
        if (i == indice_selecionado) {
            draw_set_color(c_yellow);
        } else if (mouse_sobre) {
            draw_set_color(c_red);
        } else {
            draw_set_color(c_white);
        }

        draw_text(_guix, _posY, listaDeDocumentos);
    }
}