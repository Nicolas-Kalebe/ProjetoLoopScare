#region dialogando
if(instance_exists(oDialogo)){
	global.dialogando=true;
}else{
	global.dialogando=false;
}
#endregion

if (fade_in_alpha <= 0) {
	fade_in = false;
	fade_in_alpha = 1;
}