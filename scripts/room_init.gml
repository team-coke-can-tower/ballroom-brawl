// initalise global variables

// initalise combo steps

global.PUNCH = 0
global.KICK = 1

global.combos[0, 0] = global.PUNCH
global.combos[0, 1] = global.PUNCH
global.combos[0, 2] = global.KICK

global.combos[1, 0] = global.PUNCH
global.combos[1, 1] = global.PUNCH
global.combos[1, 2] = global.PUNCH
global.combos[1, 3] = global.PUNCH

global.combos[2, 0] = global.KICK
global.combos[2, 1] = global.PUNCH
global.combos[2, 2] = global.PUNCH
global.combos[2, 3] = global.KICK

// initalise the attack offsets

global.attack_offsets[0] = 1
global.attack_offsets[1] = 5
global.attack_offsets[2] = 7//The animation length
