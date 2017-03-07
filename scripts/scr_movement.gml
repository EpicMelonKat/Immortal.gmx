///scr_movement(1=WASD 2=ARROWKEYS)



if argument0 = 1{
up_key = ord("W")
down_key = ord("S")
left_key = ord("A")
right_key = ord("D")
}
if argument0 = 2{
up_key = vk_up
down_key = vk_down
left_key = vk_left
right_key = vk_right
}

up_pressed = keyboard_check_pressed(up_key)
down_pressed = keyboard_check_pressed(down_key)
if up_pressed {
    lastdir = "up"
}
if down_pressed {
    lastdir = "down"
}

up_key = keyboard_check(up_key)
down_key = keyboard_check(down_key)
left_key = keyboard_check(left_key)
right_key = keyboard_check(right_key)

if keyboard_check_pressed(left_key) {
attack_dir = "left"
attack_degree = 180
}
if keyboard_check_pressed(right_key) {
attack_dir = "right"
attack_degree = 0
}
if keyboard_check_pressed(up_key) {
attack_dir = "up"
attack_degree = 90
}
if keyboard_check_pressed(down_key) {
attack_dir = "down"
attack_degree = 270
}

//x
if left_key {
    if lastdir = "up" {
    scr_animate(4,8,0.1)
    }
    if lastdir = "down" {
    scr_animate(0,4,0.1)
    }
    if global.player_xspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) > round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*-2){
    global.player_xspd -= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

if right_key {
    if lastdir = "up" {
    scr_animate(4,8,0.1)
    }
    if lastdir = "down" {
    scr_animate(0,4,0.1)
    }
    if global.player_xspd + round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) < round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*2){
    global.player_xspd += round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

if keyboard_check(up_key) and keyboard_check(down_key) {
    image_index = minframe
    fspeed = 0
    image_speed = 0
}

if keyboard_check(left_key) and keyboard_check(right_key) {
    fspeed = 0
    image_speed = 0
}

if left_key and right_key and up_key=false and down_key=false {
    image_index = minframe
    fspeed = 0
    image_speed = 0
}

if keyboard_check(up_key)=false and keyboard_check(down_key)=false and keyboard_check(left_key)=false and keyboard_check(right_key)=false{
    image_angle = minframe
    fspeed = 0
    image_speed = 0
}


//y
if up_key {
    if down_key=false{
    lastdir = "up"
    scr_animate(4,8,0.1)
    minframe = 4
    }
    
    if global.player_yspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) > round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*-2){
    global.player_yspd -= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

if down_key {
    if up_key=false{
    lastdir = "down"
    scr_animate(0,4,0.1)
    minframe = 0
    }
    
    if global.player_yspd + round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) < round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*2){
    global.player_yspd += round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}


//x
if global.player_xspd!=0{
    if global.player_xspd < 0 {
        if global.player_xspd + round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2) > 0 {
            global.player_xspd = 0
            exit
        }
        global.player_xspd+= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2)
    }
    
    if global.player_xspd > 0 {
    
        if global.player_xspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2) < 0 {
            global.player_xspd = 0
            exit
        }
        global.player_xspd-= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2)
    }
    

}
//y
if global.player_yspd!=0{
    if global.player_yspd < 0 {
        if global.player_yspd + round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2) > 0 {
            global.player_yspd = 0
            exit
        }
        global.player_yspd+= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2)
    }
    
    if global.player_yspd > 0 {
    
        if global.player_yspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2) < 0 {
            global.player_yspd = 0
            exit
        }
        global.player_yspd-= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)/2)
    }
    

}

y+=round(global.player_yspd)
x+=round(global.player_xspd)
