/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
view_xport[0] = irandom_range(-treme, treme);
view_yport[0] = irandom_range(-treme, treme);

treme = lerp(treme, 0, .01);

if(treme <= 1) instance_destroy();