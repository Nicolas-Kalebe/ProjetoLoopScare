_scale=0; _fade=1; _whatever=2; //This is not needed, it is simply a preference. We will use these in place of numbers, when we are using arrays.
total_options=10; //Total amount of options
option_cur=0; //Current/Selected option we want to look at
y_draw_begin=0; //Starting y position to draw
y_draw_cur=0; //Current y position we are drawing
y_draw_offset=sprite_get_width(option_s); //This is size of the option, used so options are not drawn over each other, change this to whatever size you want, or use the Option's sprite
y_draw_spacing=5; //this will be used as "spacing" inbetween options, totally optional
transition_speed=.20; //This is how "smoothly" we will transition the y_draw_cur value to the y_draw_begin value, increase for faster movement
scale=.8; //Starting "scaling" for images (this will make options smaller than the current option
scale_add=.2; //The total scaling increase for "selected" options
scale_speed=.2; //The speed of scaling
fade=.35; //Fade increments per "distance" from selection
fade_speed=.2; //The speed of fade transition

//Create Option Array
for(i=0;i<total_options;i++){
    option[i,_scale]=1; //Set this Options Current Scaling, this will be used for a smooth scaling when switching options
    option[i,_fade]=1-(abs(i-option_cur)*fade); //Set this Options Current Fade value
    option[i,_whatever]=i*i; //This is just an example on how you can give each option "info" or retrievable data
    }