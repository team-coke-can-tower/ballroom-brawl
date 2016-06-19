///enemy_gen_step()

// Replace enemy on left
if(not enemy_left_exists) {
    alarm[0] = respawn_delay;
    enemy_left_exists = true;
}

// Replace enemy on right
if(not enemy_right_exists) {
    alarm[1] = respawn_delay;
    enemy_right_exists = true;
}

