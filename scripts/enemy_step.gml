// enemy_step()

// all states except combo go to combo if you are near enough

var player_dir = point_direction(x, y, obj_player.x, obj_player.y)
facing_left = player_dir > 90 && player_dir < 270

if(state == "move" || state == "combo"){
    if(facing_left){
        image_xscale = -1
    }
    else{
        image_xscale = 1
    }
}

// execute code on certain states

switch(state){
    case "idle":
        if(state_alarm_on){
            goto_state("move")
        }
        break;
    case "move": {
        if(facing_left){
            hspeed = -5
        }
        else{
            hspeed = 5
        }
        
        if(distance_to_object(obj_player) < 5){
            // near player, perform combo
            goto_state("combo")
        }
        break;
    }
    case "hurt":{
        if(!is_animated){
            goto_state(last_state)
        }
        if(state_alarm_on) {
            goto_state(last_state)
        }
        break;
    }
    case "combo":
        if(distance_to_object(obj_player) > 5){
            if(facing_left){
                hspeed = -5
            }
            else{
                hspeed = 5
            }
        }
        else{
            hspeed = 0
        }
        if(distance_to_object(obj_player) > 30){
            goto_state("idle")
        }
        
        if(!is_animated){
            var attack
            if(facing_left) {
                attack = instance_create(x-abs(sprite_width/2), y, obj_attack)
            } else {
                attack = instance_create(x+abs(sprite_width/2), y, obj_attack)
            }
            attack.from_player = false
            attack.damage = 1
            
            if(combo_attack_index == array_length_2d(combos, combo_num) - 1){
                // Finished the combo
                goto_state("idle")
            }
            else{
                // Go to the next attack in the combo
                combo_attack_index++;
                perform_animation(attack_sprites[combos[combo_num, combo_attack_index]], false)
            }
        }
        break;
}

