// enemy_step()

if(combo_num != -1){
    if(distance_to_point(obj_player.x, obj_player.y) < 5){
        
    }
    else{
        move_towards_point(obj_player.x, obj_player.y, 5)
    }
}

if(attack_type != -1){
    if(sprite_index <= global.attack_offsets[attack_type + 1]){
        sprite_index++
    }
    else{        
        if(combo_attack_index == array_length_2d(combo_num, combo_num) - 1){
            // Finished the combo
            combo_attack_index = 0;
            sprite_index = 0
        }
        else{
            // Go to the next attack in the combo
            combo_attack_index++;
            sprite_index = global.attack_offsets[global.combos[combo_num, combo_attack_index]]
        }
    }
}

