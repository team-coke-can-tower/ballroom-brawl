/// goto_state(state)
// switches the enemy to the specified state

last_state = state; // TODO: check this
state = argument0; //sets the member variable to the argument
alarm[0] = -1
state_alarm_on = false
hspeed = 0

// reset the state alarm

show_debug_message(state)

switch(state){
    case "idle":
        perform_animation(idle_sprite, true, 0.5)
        alarm[0] = irandom_range(3*30, 5*30)
        break;
    case "move":
        perform_animation(move_sprite, true)
        alarm[0] = 5000 // 5 secs until you get rid of the move state
        break;
    case "hurt":
        perform_animation(hurt_sprite, false)
        break;
    case "combo":
        combo_num = irandom_range(0, array_height_2d(combos) - 1)
        combo_attack_index = 0
        perform_animation(attack_sprites[combos[combo_num, 0]], false)
        break;
}
