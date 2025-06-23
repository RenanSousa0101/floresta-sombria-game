#region CONTROLES

key_right= keyboard_check(ord("D")); // andar para direita
key_left= keyboard_check(ord("A")); // andar para esquerda
key_jump= keyboard_check_pressed(vk_space); //  pular
if(keyboard_check_released(vk_alt)) luz = !luz;

#endregion

if(global.dialogo == false){
		
#region MOVIMENTAÇÃO
var move = key_right - key_left;
var is_running = keyboard_check(vk_shift); // indica se o personagem está correndo ou não

if is_running{
	
	if (sprite_index == spr_correndo) {
    if (!audio_is_playing(Correndo_grama) && sprite_index == spr_correndo) {
        audio_play_sound(Correndo_grama, 1, false);
        alarm[0] = room_speed * (duracao_maxima div 1000);
    }
}	
	
    // se o personagem está correndo, a velocidade é multiplicada por um fator de corrida
    hspd = move * (spd + 2); // run_spd_bonus é um valor que aumenta a velocidade de corrida
	sprite_index = spr_correndo;
	image_speed = 1;
	
} else {
	
	if (sprite_index == spr_caminhando) {
    if (!audio_is_playing(caminhando_grama) && sprite_index == spr_caminhando) {
        audio_play_sound(caminhando_grama, 1, false);
        alarm[0] = room_speed * (duracao_maxima div 1000);
    }
}

    hspd = move * spd; // velocidade normal
	sprite_index = spr_caminhando;
	image_speed = 1;
	
}


vspd = vspd + grv;


//COLISÂO HORIZONTAL
if place_meeting(x+hspd,y,obj_chao)
{
	while(!place_meeting(x+sign(hspd),y,obj_chao))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
x = x + hspd;

//COLISÂO VERTICAL
if place_meeting(x,y+vspd,obj_chao)
{	
	
	while(!place_meeting(x,y+sign(vspd),obj_chao))
	{
		y = y + sign(vspd);
	}

	vspd = 0;
}
y = y + vspd;

//PULO
if place_meeting(x,y+1,obj_chao) and key_jump
{
vspd -= 10;
}

#endregion

#region TROCA DE SPRITES

if(hspd != 0) image_xscale = sign(hspd);


if (place_meeting(x, y+1, obj_chao)) { // verifica se o personagem está no chão
    if (key_jump) { // se pressionar a tecla de pulo
        sprite_index = spr_pulo_neutro; // troca o sprite para o de preparação de pulo 
		 image_speed = 1;// define a velocidade da animação de preparação de pulo
    } else {
        // se não estiver pulando, define o sprite de acordo com a direção em que está se movendo
        if (hspd != 0) {

        } else{
            sprite_index = spr_parado;
            image_speed = 1;
        }
    }
} else {
    if (vspd < 0) { // se estiver subindo
        sprite_index = spr_pulando_inicial;
        image_speed = 1;
	if (sprite_index == spr_pulando_inicial) {
    if (!audio_is_playing(Pulando) && sprite_index == spr_pulando_inicial) {
        audio_play_sound(Pulando, 1, false);
        alarm[0] = room_speed * (duracao_maxima div 1000);
    }
}
    }
	else { // se estiver caindo
        sprite_index = spr_pulando_queda;
        image_speed = 1;
    }
}
 
// verifica se o personagem atingiu o chão
	if (place_meeting(x, y+1, obj_chao)) {
    if (vspd > 0) { // se estiver caindo
        sprite_index = spr_pulo_neutro;
        image_speed = 1; // define a velocidade da animação
        vspd = 0; // zera a velocidade vertical
			if (sprite_index == spr_pulo_neutro) {
			if (!audio_is_playing(Queda) && sprite_index == spr_pulo_neutro) {
        audio_play_sound(Queda, 1, false);
        alarm[0] = room_speed * (duracao_maxima div 1000);
    }
}
    }
}
}
if (global.leu == false &&  room_get_name(room) == "Floresta_parte2") {
    limit_right = 4116;
	room_width[Floresta_parte2] = 4116;
	var limit_bottom = room_height;
	var limit_left = 0;
	var limit_top = 0;
}else if (room_get_name(room) == "Floresta_parte2"){
// Defina os limites do cenário
var limit_left = 0;
var limit_right = room_width;
var limit_top = 0;
var limit_bottom = room_height;
room_width[Floresta_parte2] = 7004;
}

if(obj_Emma.x > 6100) && (room_get_name(room) == "Floresta_parte2"){
	limit_right = 5700;
}

var limit_left = 0;
var limit_right = room_width;
var limit_top = 0;
var limit_bottom = room_height;

// Ajuste a posição do personagem dentro dos limites
if (x < limit_left) {
    x = limit_left;
}
if (x > limit_right) {
    x = limit_right;
}
if (y < limit_top) {
    y = limit_top;
}
if (y > limit_bottom) {
    y = limit_bottom;
}

// Verifica se o jogador chegou ao ponto desejado
if ((x >= 6432 && y >= 337) &&  room_get_name(room) == "Floresta_inicio") {
    // Troca para outra room
    room_goto(Floresta_Cachoeira);
}
var currentRoom = room;
if (x >= 4060 && y >= 300 && currentRoom == Floresta_Cachoeira) {
    // Troca para outra room
    room_goto(Floresta_parte2);
}

if (x >= 6900 && y >= 300 && currentRoom == Floresta_parte2) {
    // Troca para outra room
    room_goto(continua);
}
#endregion

 #region dialogo

if distance_to_object(Obj_fala_inicial) <= 50 && !dialogoCriado[0] {
    var _npc = instance_nearest(x, y, Obj_fala_inicial);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[0] = true;
}

if distance_to_object(Obj_fala_dois) <= 50 && !dialogoCriado[1] {
    var _npc = instance_nearest(x, y, Obj_fala_dois);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[1] = true;
}

if distance_to_object(Obj_fala_tres) <= 50 && !dialogoCriado[2] {
    var _npc = instance_nearest(x, y, Obj_fala_tres);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[2] = true;
}

if distance_to_object(Obj_fala_quarto) <= 50 && !dialogoCriado[3] {
    var _npc = instance_nearest(x, y, Obj_fala_quarto);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[3] = true;
}

if distance_to_object(Obj_fala_nona) <= 50 && !dialogoCriado[4] {
    var _npc = instance_nearest(x, y, Obj_fala_nona);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[4] = true;
}

if distance_to_object(Obj_fala_decima) <= 50 && !dialogoCriado[5] {
    var _npc = instance_nearest(x, y, Obj_fala_decima);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[5] = true;
}

if distance_to_object(Obj_fala_decipri) <= 50 && !dialogoCriado[6] {
    var _npc = instance_nearest(x, y, Obj_fala_decipri);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[6] = true;
}

if distance_to_object(Obj_fala_deciseg) <= 50 && !dialogoCriado[7] && global.aconteceu == true {
    var _npc = instance_nearest(x, y, Obj_fala_deciseg);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
    dialogoCriado[7] = true;
}

if distance_to_object(Obj_carta1) <= 50 && keyboard_check_pressed(ord("E")) && global.cont == false{
    var _npc = instance_nearest(x, y, Obj_carta1);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
   
	
}

if distance_to_object(Obj_carta2) <= 50 && keyboard_check_pressed(ord("E")) && global.cont == false{
    var _npc = instance_nearest(x, y, Obj_carta2);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
	 
}

if distance_to_object(obj_carta3) <= 50 && keyboard_check_pressed(ord("E"))&& global.cont == false{
    var _npc = instance_nearest(x, y, obj_carta3);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
	  
}

if distance_to_object(Obj_carta4) <= 50 && keyboard_check_pressed(ord("E"))&& global.cont == false{
    var _npc = instance_nearest(x, y, Obj_carta4);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
	
}
if distance_to_object(Obj_carta5) <= 90 && keyboard_check_pressed(ord("E"))&& global.cont == false{
    var _npc = instance_nearest(x, y, Obj_carta5);
    var _dialogo = instance_create_layer(x, y, "dialogo", Obj_Dialogo);
    _dialogo.npc_nome = _npc.nome;
	
}

if keyboard_check_pressed(vk_escape){
room_goto(StartGame);
audio_stop_all();
}

if(global.leu == true && room_get_name(room) == "Floresta_parte2" && atv == false){

    if (!audio_is_playing(coracao) && atv == false) {
		audio_play_sound(coracao, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
		
	}
	if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_space){
			
			atv = true;
		}
}

#endregion
