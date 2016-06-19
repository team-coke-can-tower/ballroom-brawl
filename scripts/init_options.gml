var rebinding_text;
rebinding_text[0] = "left"
rebinding_text[1] = "right"
rebinding_text[2] = "up"
rebinding_text[3] = "down"
rebinding_text[4] = "attack"

var current_x = 170;
var current_y = 200;
for(var i = 0;i < array_length_1d(rebinding_text);i++){
    var newPanel = instance_create(current_x, current_y, obj_rebinding_panel);
    newPanel.controling_key = rebinding_text[i];
    newPanel.option_index = i;
    current_y += 50;
}

global.option_activated = -1
