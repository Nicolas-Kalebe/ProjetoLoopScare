//Draw the Options
for(i=0;i<total_options;i++){
    draw_sprite_ext(option_s,i,x,y+((y_draw_cur)+(y_draw_offset+y_draw_spacing)*i),option[i,_scale],option[i,_scale],0,c_white,option[i,_fade]);}
  
//Just for fun //DEBUG//
draw_text(400,250,"option[option_cur,_scale] = "+string(option[option_cur,_scale]));
draw_text(400,270,"option[option_cur,_fade] = "+string(option[option_cur,_fade]));
draw_text(400,290,"option[option_cur,_whatever] = "+string(option[option_cur,_whatever]));
draw_text(5,5,"option_cur:"+string(option_cur));
draw_text(5,20,"y_draw_cur:"+string(y_draw_cur));
draw_text(5,35,"y_draw_end:"+string(y_draw_begin));
draw_text(250,5,"Use the W and S buttons to scroll through");