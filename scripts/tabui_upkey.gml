with (buttons[| button_selected]) event_perform(ev_mouse, ev_mouse_leave)

if(button_selected == 0 || button_selected == -1){
    button_selected = number_of_buttons - 1
}
else{
    button_selected--
}

with (buttons[| button_selected]) event_perform(ev_mouse, ev_mouse_enter)
