///enemy_gen_step()

// Replace enemy on left
if(not enemy_left_exists) {
    add_enemy(true);
    enemy_left_exists = true;
}

// Replace enemy on right
if(not enemy_right_exists) {
    add_enemy(false);
    enemy_right_exists = true;
}

