// Desenho do sprite
draw_set_color(c_black);
//draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),0)
draw_sprite_ext(img, pagina,_xx, _yy, image_xscale/zoom , image_yscale/zoom , 0, c_white, 1);


#region Cetinhas
var _numDeSprites = sprite_get_number(img);
if(_numDeSprites>1 && pagina+1<_numDeSprites){
	draw_sprite(sCetinha,frame,590,335)
}
if(_numDeSprites>1 && !pagina=0){
	draw_sprite_ext(sCetinha,frame,49,335,-1,1,0,c_white,1);
}
#endregion

