
if (Floresta_inicio){
    if (!audio_is_playing(Floresta)) {
        audio_play_sound(Floresta, 10, false);
		audio_play_sound(Musica, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
}else{
audio_stop_sound(Floresta);
audio_stop_sound(Musica);
}

if(room_get_name(room) == "Floresta_parte2") && atv4 = false{
	if(!audio_is_playing(nanana)){
        audio_play_sound(nanana, 10, false);
	}
}if(obj_Emma.x > 1650 ){
	audio_stop_sound(nanana);
	atv4 = true;
}

if(room_get_name(room) == "Floresta_Cachoeira"){
	if(!audio_is_playing(Cachoeira)){
        audio_play_sound(Cachoeira, 10, false);
	} 
}else{
	audio_stop_sound(Cachoeira);
}
var atv2 = false;
if((room_get_name(room) == "Floresta_parte2") && (obj_Emma.x > 2600) && atv2 = false){
	if(!audio_is_playing(huger1)){
        audio_play_sound(huger1, 10, false);
		audio_stop_sound(Musica);
	} 
}if( global.leu == true){
	audio_stop_sound(huger1);
	atv2 = true;
}

if ((obj_Emma.x >= 2600 && obj_Emma.x <= 4300) && room_get_name(room) == "Floresta_parte2")
{
    if(!audio_is_playing(corda)){
        audio_play_sound(corda, 10, false);
	} 
}

if(global.persegui == true){
	if(!audio_is_playing(persegicao)){
        audio_play_sound(persegicao, 1, false);
		audio_stop_sound(surpresa);
	} 
} if (global.repro2 == true){
	global.aconteceu = true;
	audio_stop_sound(persegicao);
	audio_stop_sound(coracao);
	audio_stop_sound(corda);
	if (!audio_is_playing(paz)) {
        audio_play_sound(paz, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
}