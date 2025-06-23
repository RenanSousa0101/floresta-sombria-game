
if(global.leu == true){
	instance_destroy(obj_luz2);
	instance_destroy(Obj_luz3);
	visible = true;
	if (sprite_index == Spr_criatura) {
    if (!audio_is_playing(Lady_cansaso) && sprite_index == Spr_criatura) {
		audio_play_sound(Lady_cansaso, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
}if (!audio_is_playing(surpresa) && repro == 1){
		audio_play_sound(surpresa, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
		var startTime = current_time;
		var elapsedTime = current_time - startTime;
		var elapsedSeconds = elapsedTime / 1000000;
		if(elapsedSeconds < 10){
			repro = 0;
		}
    } 
	
	if((global.isBlinking == false) && piscou == true ){
global.isBlinking= true;
piscou = false;
}
if(Obj_criatura.x < 5900){	
if ((distance_to_object(obj_Emma) >= distance) || distance_to_object(obj_Emma) < 400){
	audio_stop_sound(Lady_cansaso);
	if (sprite_index == Spr_criatura_andando) {
    if (!audio_is_playing(Lady) && sprite_index == Spr_criatura_andando) {
        audio_play_sound(Lady, 1, false);
	    global.persegui = true;
        alarm[0] = room_speed * (1000 div 1000);
    }
}	instance_destroy(obj_luz2);
	instance_destroy(Obj_luz3);
var directi = point_direction(x, y, obj_Emma.x, obj_Emma.y);

global.blinkDuration = 80000;

if distance_to_object(obj_Emma) <= 40{
audio_stop_all();
room_goto(GameOver);

}


var hspd = lengthdir_x(spd, directi);
if(hspd != 0) image_xscale = sign(hspd);

sprite_index = Spr_criatura_andando;

x += hspd;
ativ = 1;

}

if(ativ == 1){
distance = 0;
}
if distance_to_object(obj_Emma) < distance{
	
sprite_index = Spr_criatura;
}

// Loop através de todos os sprites do objeto

currentAlpha += fadeSpeed * directio; // Incrementa ou decrementa a opacidade

// Verifica se a opacidade atingiu os limites mínimos ou máximos
if (currentAlpha <= minAlpha) {
    currentAlpha = minAlpha;
    directio = 1;  // Inverte a direção para aumentar a opacidade
} else if (currentAlpha >= maxAlpha) {
    currentAlpha = maxAlpha;
    directio = -1;  // Inverte a direção para diminuir a opacidade
}

image_alpha = currentAlpha;  // Aplica a opacidade atual ao objeto
} else {
	sprite_index = Spr_criatura;
	audio_stop_sound(Lady);
	audio_stop_sound(Lady_cansaso);
	audio_stop_sound(persegicao);
	instance_destroy(obj_piscar_tela);
	 if (!audio_is_playing(paz)) {
        audio_play_sound(paz, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
	if (!audio_is_playing(Lady_cansaso)) {
        audio_play_sound(Lady_cansaso, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
	if(Obj_criatura.x > 5800){
		audio_stop_sound(Lady_cansaso);
		var treme = instance_create_layer(x,y,"som_ambiente", Obj_treme);
		if (!audio_is_playing(Lady_raiva) && global.repro2 == false){
		audio_play_sound(Lady_raiva, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
		var startTime = current_time;
		var elapsedTime = current_time - startTime;
		var elapsedSeconds = elapsedTime / 1000000;
		if(elapsedSeconds < 10){
			global.repro2 = true;
			instance_destroy(Obj_criatura);
			instance_destroy(Obj_enforcado);
			instance_destroy(Obj_sangue);
			instance_destroy(Obj_carta4);
			instance_destroy(Obj_tronco2);
			instance_destroy(Obj_colisao);
		}
    } 
	}
	if distance_to_object(obj_Emma) <= 40{
		audio_stop_all();
		room_goto(GameOver);
	}
	currentAlpha += fadeSpeed * directio; // Incrementa ou decrementa a opacidade

// Verifica se a opacidade atingiu os limites mínimos ou máximos
if (currentAlpha <= minAlpha) {
    currentAlpha = minAlpha;
    directio = 1;  // Inverte a direção para aumentar a opacidade
} else if (currentAlpha >= maxAlpha) {
    currentAlpha = maxAlpha;
    directio = -1;  // Inverte a direção para diminuir a opacidade
}

image_alpha = currentAlpha;  // Aplica a opacidade atual ao objeto
}
}