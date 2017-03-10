if mouse_check_button_pressed(mb_left) {
    if attacking = false {
        attacking = true  
        alarm[0] = melee_fov*2/attack_duration
        curdir = image_angle
        
        image_angle = point_direction(x,y,obj_Aim.x,obj_Aim.y) -90 - melee_fov
        direction = image_angle
    }
}
