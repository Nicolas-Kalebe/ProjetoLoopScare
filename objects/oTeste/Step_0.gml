//Determine the current y position we are drawing at
if y_draw_cur!=y_draw_begin{//If the y position to draw is not yet at the begin y position we want, in/de crease the value to get it there
    y_draw_cur+=(y_draw_begin-y_draw_cur)*transition_speed;}//This will "smoothing" transition the y position to the begin position

//Determine the begin y position to draw
y_draw_begin=(y_draw_offset*-1)*option_cur; //we do -1 because the menu will be drawn downward, doing -1 will then make the images begin to draw up higher

//Determine the Current option we are selecting/hovering
option_cur=clamp(option_cur+(keyboard_check_pressed(ord("S"))-keyboard_check_pressed(ord("W"))),0,total_options-1);

//Scale the options
for(i=0;i<total_options;i++){
    var scale_end=scale+(scale_add*(option_cur==i)); //add additional scale size if this option is the currently selected option
    if option[i,_scale]!=scale_end{
        option[i,_scale]+=(scale_end-option[i,_scale])*scale_speed;}}
      
//Fade the options
for(i=0;i<total_options;i++){
    var fade_end=1-(abs(i-option_cur)*fade); //find the "distance" this option is from current option, use that to determine strength of fade
    if option[i,_fade]!=fade_end{
        option[i,_fade]+=(fade_end-option[i,_fade])*fade_speed;}}