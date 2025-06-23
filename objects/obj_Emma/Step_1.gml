if(global.dialogo != false){
	sprite_index = spr_parado;
	if place_meeting(x,y+vspd,obj_chao)
{
	while(!place_meeting(x,y+sign(vspd),obj_chao))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;

}


