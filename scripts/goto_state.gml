/// goto_state(state)
// switches the enemy to the specified state

last_state = state; // TODO: check this
state = argument0; //sets the member variable to the argument
alarm[0] = -1
state_alarm_on = false

// reset the state alarm

switch(state){
    case "idle":
        perform_animation(IDLE_ANIMATION, true)
        alarm[0] = irandom_range(300, 500)
        break;
    case "move": 
        perform_animation(MOVE_ANIMATION, true)
        alarm[0] = 500 // 5 secs until you get rid of the move state
        break;
    case "hurt":
        perform_animation(HURT_ANIMATION, false)
        break;
    case "combo": 
        combo_num = irandom_range(1, array_height_2d(global.combos))
        combo_attack_index = 0
        perform_animation(global.combos[combo_num, 0] + ATTACK_ANIMATIONS, false)
        break;
}
