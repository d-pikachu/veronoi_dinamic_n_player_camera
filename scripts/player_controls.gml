///SMOOTH CONTROLS 

up = keyboard_check(argument0)
right = keyboard_check(argument1)
down = keyboard_check(argument2)
left = keyboard_check(argument3)

if right == left {
    spdh = gradually(spdh , 0 , rate/2)
}
else {
    if right {
        spdh = gradually(spdh , max_speed , rate)
    }
    if left {
        spdh = gradually(spdh , -max_speed , rate)
    }
}

if up == down {
    spdv = gradually(spdv , 0 , rate/2)
}
else {
    if down {
        spdv = gradually(spdv , max_speed , rate)
    }
    if up {
        spdv = gradually(spdv , -max_speed , rate)
    }
}

x += spdh
y += spdv

//x = clamp(x,0,W)
//y = clamp(y,0,H)
x = clamp(x,0,room_width)
y = clamp(y,0,room_height)
