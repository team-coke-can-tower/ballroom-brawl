///player_up_alarm
// After delay, make player jump.

v_acc = 1;
vspeed = -y_speed;
image_speed = 0.25;
y -= 1; // ensure not touching floor so no collision
pre_jumping = false;
falling = true;
