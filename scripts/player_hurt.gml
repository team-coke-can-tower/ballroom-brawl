///player_hurt()

attack = instance_nearest(x, y, obj_attack);

if(not attack.from_player) {
    hp -= attack.damage;
    been_hit = true;
    
    if(hp <= 0) {
        is_dead = true;
    } else {
        sprite_index = spr_player_hurt;
        image_index = 0;
        if(attack.x > x) {
            x_speed = -5;
            h_acc = 1;
        } else {
            x_speed = 5;
            h_acc = -1;
        }
        alarm[2] = 5;  // call player_hurt_end
    }
    
    with(attack) {
        instance_destroy();
    }
}
