// init combos data

PUNCH = 0
KICK = 1

combos[0, 0] = PUNCH
combos[0, 1] = PUNCH
combos[0, 2] = KICK

combos[1, 0] = PUNCH
combos[1, 1] = PUNCH
combos[1, 2] = PUNCH
combos[1, 3] = PUNCH

combos[2, 0] = KICK
combos[2, 1] = PUNCH
combos[2, 2] = PUNCH
combos[2, 3] = KICK

state_alarm_on = false

state = "idle"

is_animated = false

hp = 3

goto_state("idle")
