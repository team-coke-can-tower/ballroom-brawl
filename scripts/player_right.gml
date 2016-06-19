///player_right()

if (not (has_punched or been_hit)) {
    x_speed = run_hspeed;
    
    if (facing_left) {
        facing_left = false;
        image_xscale = -image_xscale;
    }
}
