// enemy_step()

animation_step()

// all states go to combo if you are near enough

if(distance_to_object(obj_player) < 5){
    goto_state("combo");
    return 0;
}

// execute code on certain states

switch(state){
    case "idle":
        if(!state_alarm_on){
            goto_state("move")
        }
        break
    case "move": {
        move_towards_point(obj_player.x, obj_player.y, 5)
        var player_dir = point_direction(x, y, obj_player.x, obj_player.y)
        
        if(abs(player_dir) > 90){
            image_xscale = -1
        }
        else{
            image_xscale = 1
        }
        
        if(distance_to_object(obj_player) < 5){
            // near player, perform combo
            goto_state("combo")
        }
        if(distance_to_object(obj_player) > 20){
            goto_state("idle")
        }
        break;
    }
    case "hurt":{
        if(!is_animated){
            goto_state(last_state)
        }
    }
    case "combo":
        if(distance_to_object(obj_player) > 5){
            goto_state("move")
        }
        if(!is_animated){
            if(combo_attack_index == array_length_2d(combo_num, combo_num) - 1){
                // Finished the combo
                goto_state("idle")
            }
            else{
                // Go to the next attack in the combo
                combo_attack_index++;
                perform_animation(global.combos[combo_num, combo_attack_index] + ATTACK_ANIMATIONS, false)
            }
        }
        break;
}

