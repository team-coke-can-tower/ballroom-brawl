///player_up()

if (not (has_punched or been_hit or falling or pre_jumping)) {
    alarm[1] = 10;  // call player_up_alarm()
    sprite_index = spr_player_jump;
    image_index = 0;
    image_speed = 0.5;
    pre_jumping = true;
}
