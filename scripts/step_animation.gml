/// step_animation()

if(sprite_index <= global.attack_offsets[attack_type + 1]){
    image_index++
}
else{
    is_animated = false
    image_index = 0
}
