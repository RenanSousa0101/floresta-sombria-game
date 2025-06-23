// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function src_textos(){
	switch npc_nome{
		case "Primeiro Texto":
			ds_grid_add_text("...", spr_Emma_calado, 0,"SARAH");
			ds_grid_add_text("Que clarão foi esse???", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Gabriel?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Carlos?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Onde vocês estão???", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Parem com isso... Se é uma brincadeira, já podem parar. Por Favor...eu tenho medo.....", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Pessoal???", spr_Emma_falando, 0,"SARAH");
			
			
			break;
			
		case "Segundo Texto":
			
			ds_grid_add_text("", spr_carta1, 1,"Oliver");
			
			break;
			
			case "Quinto Texto":
			
			ds_grid_add_text("", spr_carta2, 1,"Oliver");
			
			break;
			
			case "Sexto Texto":
			
			ds_grid_add_text("", spr_carta3, 1,"Oliver");
			
			break;
			case "Setimo Texto":
			
			ds_grid_add_text("", spr_carta4, 1,"Oliver");
			
			break;
			
			case "Vinte Texto":
			
			ds_grid_add_text("", spr_carta5, 1,"Oliver");
			
			break;
			
			case "Terceiro Texto":
			
			ds_grid_add_text("Que lugar é esse?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Não me lembro desse caminho", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Carlos!!! Gabriel!!!", spr_Emma_falando, 0,"SARAH");
					
			break;
				
			case "Quarto Texto":
			
			ds_grid_add_text("Que corvo sinistro!", spr_Emma_calado, 0,"SARAH");
					
			break;
			
			case "Oitavo Texto":
			
			ds_grid_add_text("O gabriel não me disse que tinha outras pessoas aqui.", spr_Emma_falando, 0,"SARAH");
					
			break;
			
			case "Nona Texto":
			
			ds_grid_add_text("Que porra foi essa!?", spr_Emma_falando, 0,"SARAH");
					
			break;
			
			case "Decimo Texto":
			
			ds_grid_add_text("Ah, meu Deus!!!", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("O que houve aqui!?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Quem é essa pessoa!?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Quando passamos por aqui não tinha isso...", spr_Emma_falando, 0,"SARAH");
			
					
			break;
			
			case "Decipri Texto":
			
			ds_grid_add_text("O que aconteceu com aquela coisa?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Onde estão os garotos!?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Porraaa!!", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Essas vozes...", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Minha cabeça dói...", spr_Emma_falando, 0,"SARAH");
			
					
			break;
			
			case "Deciseg Texto":
			
			ds_grid_add_text("Onde está o corpo!?", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Maldita hora em que aceitei essa excursão!!!", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Calma, calma, calma...", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Sarah, mantenha a calma", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("É só minha cabeça brincando comigo, eu já superei isso...", spr_Emma_falando, 0,"SARAH");
			ds_grid_add_text("Eu só preciso encontrar o Gabriel...", spr_Emma_falando, 0,"SARAH");
			
			
					
			break;
			
			
			
	}
}

function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}