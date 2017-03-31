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




if attacking = false {
if lastdir = "up" {
    minframe = 4
    maxframe = 4
}
if lastdir = "down" {
    minframe = 0
    maxframe = 0
}
    if keyboard_check(left_key) and keyboard_check(right_key)=false {//left key
        if lastdir = "up" {
            minframe = 4
            maxframe = 8
        }
        if lastdir = "down" {
            minframe = 0
            maxframe = 4
        }
    }
    if keyboard_check(right_key) and keyboard_check(left_key)=false {//right key
        if lastdir = "up" {
            minframe = 4
            maxframe = 8
        }
        if lastdir = "down" {
            minframe = 0
            maxframe = 4
        }
    }
    if keyboard_check(up_key) and keyboard_check(down_key)=false {//back
        minframe = 4
        maxframe = 8
        lastdir = "up"
    }
    if keyboard_check(down_key) and keyboard_check(up_key)=false {//front
        minframe = 0
        maxframe = 4
        lastdir = "down"
    }
    
}



scr_animate(minframe,maxframe,0.1)





spd_mod = obj_player.myspeed/100+2

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

while place_free(x+global.player_xspd,y)=false {
global.player_xspd/=2
}
while place_free(x,y+global.player_yspd)=false {
global.player_yspd/=2
}

if place_free(x+global.player_xspd,y) {
x+=global.player_xspd
}
if place_free(x,y+global.player_yspd) {
y+=global.player_yspd
}
