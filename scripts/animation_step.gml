/// step_animation()

if(is_animated){
    if(sprite_index <= animations[current_animation + 1]){
        image_index++
    }
    else if(animation_looping){
        image_index = animations[current_animation]
    }
    else{
        is_animated = false
        image_index = 0
    }
}
