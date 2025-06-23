if keyboard_check_pressed(vk_enter) && room_get_name(room) == "StartGame"{
room_goto(maio2010);
video_close();
}
if keyboard_check_pressed(vk_escape){
game_end();
}