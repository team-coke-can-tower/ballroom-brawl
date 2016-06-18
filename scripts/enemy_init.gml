// The index of the combo that the enemy is on, -1 means not started
combo_attack_index = -1

// Whether a combo is being attempted at the moment, -1 means no combo
combo_num = -1

state_alarm_on = false

// Set the alarm for the combo
alarm[0] = irandom_range(300,600)

animations[0] = 1  //idle animation
IDLE_ANIMATION = 0
animations[1] = 5  //hurt animation
HURT_ANIMATION = 1
animations[2] = 7  //moving animation
MOVE_ANIMATION = 2
animations[3] = 15 //punch
ATTACK_ANIMATIONS = 3
animations[4] = 20 //kick
animations[5] = 25 //end

is_animated = false

goto_state("idle")
