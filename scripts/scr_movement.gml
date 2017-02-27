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

up_key = keyboard_check(up_key)
down_key = keyboard_check(down_key)
left_key = keyboard_check(left_key)
right_key = keyboard_check(right_key)

//x
if left_key {
    if global.player_xspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) > round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*-2){
    global.player_xspd -= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

if right_key {
    if global.player_xspd + round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) < round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*2){
    global.player_xspd += round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

//y
if up_key {
    image_index = 1
    if global.player_yspd - round(((global.stat_player_speed*0.02)+global.player_defaultspd/2)) > round(((global.stat_player_speed*0.02)+global.player_defaultspd/1.5)*-2){
    global.player_yspd -= round(((global.stat_player_speed*0.02)+global.player_defaultspd/2))
    }
}

if down_key {
    image_index = 0
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
