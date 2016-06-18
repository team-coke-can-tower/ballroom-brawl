///player_hurt()

attack = instance_nearest(x, y, obj_attack);
been_hit = true;

if(not attack.from_player) {
    hp -= attack.damage;
    
    if(hp <= 0) {
        is_dead = true;
    } else {
        sprite_index = spr_player_hurt;
        image_index = 0;
        image_speed = 0.5;
        alarm[2] = 20;  // call player_hurt_end
    }
    
    with(attack) {
        instance_destroy();
    }
}
