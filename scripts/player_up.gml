///player_up()

if (not (has_punched or been_hit or falling)) {
    alarm[1] = 20;  // call player_up_alarm()
    sprite_index = spr_player_jump;
    image_index = 0;
    falling = true;
}
