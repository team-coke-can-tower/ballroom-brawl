///player_step()

vspeed += v_acc;
hspeed += h_acc;

if((sprite_index == spr_player_jump) and (image_index == 5)) {
    sprite_index = spr_player_fall;
    image_index = 0;
}

if((sprite_index == spr_player_land) and (image_index == 3)) {
    sprite_index = spr_player;
    image_index = 0;
}

// collision check with floor
if((y >= (room_height - 64))) {
    y = room_height - 64;
    if (not pre_jumping) {
        player_collide_wall();
    }
}

