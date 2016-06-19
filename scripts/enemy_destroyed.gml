///enemy_destroyed()
// Tell enemy generator to make another.

if(from_left) {
    generator.enemy_left_exists = false;
} else {
    generator.enemy_right_exists = false;
}
