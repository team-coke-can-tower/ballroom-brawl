///player_collide_floor

v_acc = 0;
falling = false;

if(vspeed > 0) {
    vspeed = 0;
}

if(sprite_index == spr_player_fall) {
    sprite_index = spr_player_land;
    image_index = 0;
}
