if (!instance_exists(Alvo)){
	exit;
}

x=lerp(x,Alvo.x,0.2);
y=lerp(y,Alvo.y-AlturaCam/4,0.2);

camera_set_view_pos(view_camera[0], x-LarguraCam/2,y-AlturaCam/2)