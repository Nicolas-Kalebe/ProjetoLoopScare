//Váriaveis para fácil alteração do tamanho da caixa de texto e desenho das strings.
var _margemEsq = localx-(string_width(texto[pagina])/2)
var _margemDir = 20+localx+(string_width(texto[pagina])/2)
var _margemInf = localy-50;
var _margemSup = _margemInf - string_height(texto[pagina])
//Altura vert. e hor. em pixels.
var _linha = string_width(texto[pagina]);
var _coluna = 40 + string_height(texto[pagina]);
//Formatação
draw_set_halign(fa_center);
var _c = c_black;

var _texto = string_copy(texto[pagina],0,caractere);

draw_set_font(Font1)

draw_sprite_stretched(nineslice,1,_margemEsq-15,_margemSup-20,_linha+30,_coluna)

if(string_count("\n",texto[pagina])<2){ //Contador de linhas para reajuste do sprite.
	draw_text_ext(localx, _margemSup-5, _texto, 23, string_width(texto[pagina]));
}else{
	draw_text_ext(localx, _margemSup, _texto, 23, string_width(texto[pagina]));
}

draw_text(x,y,caractere);