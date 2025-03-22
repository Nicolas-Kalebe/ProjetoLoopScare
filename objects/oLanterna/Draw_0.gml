if(surface_exists(sombra_surface)){
	surface_set_target(sombra_surface);
	
	draw_set_color(c_black);
	draw_set_alpha(0.9);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1)
	draw_set_color(c_white);
	
	if(global.lanterna==true){
		gpu_set_blendmode(bm_subtract);
		draw_sprite_ext(sLuzMedia, floor(lanternaFrameRate), oPlayer.x+30*oPlayer.image_xscale/6 ,
		oPlayer.y - sprite_get_height(sMarleStand) * 3, -oPlayer.image_xscale, oPlayer.image_xscale, 0, c_white, 0.5);
		draw_sprite_ext(sLuzCurto, floor(lanternaFrameRate), oPlayer.x+30*oPlayer.image_xscale/6 ,
		oPlayer.y - sprite_get_height(sMarleStand) * 3, -oPlayer.image_xscale, oPlayer.image_xscale, 0, c_white, 0.2);
		
		
		draw_sprite_ext(sLuzGrande, floor(lanternaFrameRate), oPlayer.x+30*oPlayer.image_xscale/6 ,
		oPlayer.y - sprite_get_height(sMarleStand) * 3, -oPlayer.image_xscale,oPlayer.image_xscale,
		0, c_white, 0.2);
		

		gpu_set_blendmode(bm_normal);

	}
	surface_reset_target();
}else{
	sombra_surface = surface_create(room_width,room_height);
}

draw_surface(sombra_surface,0,0);