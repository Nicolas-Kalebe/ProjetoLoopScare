var _guiy = display_get_gui_height() / 2;

#region Navegação pelo Teclado
if (keyboard_check_pressed(ord("W"))) { // Pra cima
    if (indice_selecionado == 0) {
        // Se for o primeiro item, vai para o último e ajusta o scroll_offset
        indice_selecionado = tamanhoDaLista - 1;
        scroll_offset = _alturaTotalLista - display_get_gui_height() + 50; // Ajuste para mostrar o final
    } else {
        // Caso contrário, sobe normalmente
        indice_selecionado = (indice_selecionado - 1 + tamanhoDaLista) mod tamanhoDaLista;

        // Verificar se o item selecionado está fora da tela superior e rolar automaticamente
        var _posY = _guiy - 150 + indice_selecionado * _espacamento - scroll_offset;
        if (_posY - _espacamento< 0) {
            // Se o item selecionado está fora da tela superior, ajusta o scroll_offset
            scroll_offset -= _espacamento;
        }
    }
}

if (keyboard_check_pressed(ord("S"))) { // Pra baixo
    if (indice_selecionado == tamanhoDaLista - 1) {
        // Se for o último item, volta ao primeiro e zera o scroll_offset
        indice_selecionado = 0;
        scroll_offset = 0;
    } else {
        // Caso contrário, avança normalmente
        indice_selecionado = (indice_selecionado + 1) mod tamanhoDaLista;
        
        // Verificar se o item selecionado está no fim da tela e rolar automaticamente
        var _posY = _guiy - 150 + indice_selecionado * _espacamento - scroll_offset;
        if (_posY + _espacamento*2 > display_get_gui_height()) {
            // Se o item selecionado está fora da tela, ajusta o scroll_offset
            scroll_offset += _espacamento;
        }
    }
}

if (keyboard_check_pressed(vk_space)) {// Confirmar
    var documento = ds_list_find_value(oDocumentosColetados.DocEncontrados, indice_selecionado);
    show_debug_message("Selecionado: " + documento);
}
#endregion

#region Navegação pelo Mouse
if (mouse_wheel_down()) {
    scroll_offset += scroll_speed;
}

if (mouse_wheel_up()) {
    scroll_offset -= scroll_speed;
}
#endregion