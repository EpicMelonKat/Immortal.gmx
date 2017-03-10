///scr_movement(1=WASD 2=ARROWKEYS)
if argument0 = 1{
up_key = ord("W")
down_key = ord("S")
left_key = ord("A")
right_key = ord("D")
obj_Aim.x = mouse_x
obj_Aim.y = mouse_y
}
if argument0 = 2{
up_key = vk_up
down_key = vk_down
left_key = vk_left
right_key = vk_right
}

if keyboard_check_pressed(left_key) {
attack_dir = "left"
attack_degree = 90
}
if keyboard_check_pressed(right_key) {
attack_dir = "right"
attack_degree = 270
}
if keyboard_check_pressed(up_key) {
attack_dir = "up"
attack_degree = 0
lastdir = "up"
minframe = 4
//image_index=minframe
//image_speed=0

}
if keyboard_check_pressed(down_key) {
attack_dir = "down"
attack_degree = 180
lastdir = "down"
minframe = 0
//image_index=minframe
//image_speed=0
}

spd_mod = global.stat_player_speed/100+2

if global.player_xspd < spd_mod*4 and global.player_xspd > spd_mod*-4 {
global.player_xspd += sign(keyboard_check(left_key))*-1 * spd_mod + sign(keyboard_check(right_key)) * spd_mod
}
if global.player_yspd < spd_mod*4 and global.player_yspd > spd_mod*-4 {
global.player_yspd += sign(keyboard_check(up_key))*-1 * spd_mod + sign(keyboard_check(down_key)) * spd_mod
}
if global.player_xspd < 0 {
    global.player_xspd/=1.5
    if global.player_xspd > 0 {
        global.player_xspd = 0
    }
}
if global.player_xspd > 0 {
    global.player_xspd/=1.5
    if global.player_xspd < 0 {
        global.player_xspd = 0
    }
}
if global.player_yspd < 0 {
    global.player_yspd/=1.5
    if global.player_yspd > 0 {
        global.player_yspd = 0
    }
}
if global.player_yspd > 0 {
    global.player_yspd/=1.5
    if global.player_yspd < 0 {
        global.player_yspd = 0
    }
}


if global.player_xspd > 0 or global.player_xspd < 0 or global.player_yspd > 0 or global.player_yspd < 0{
    if lastdir = "up" {
            scr_animate(4,8,0.1)
    }
    if lastdir = "down" {
            scr_animate(0,4,0.1)
    }
}
if keyboard_check(up_key)=false and keyboard_check(down_key)=false and keyboard_check(left_key)=false and keyboard_check(right_key)=false {
    image_index = minframe
    image_speed = 0
}

x+=global.player_xspd
y+=global.player_yspd
