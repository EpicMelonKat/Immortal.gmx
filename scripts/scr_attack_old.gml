if keyboard_check_pressed(vk_space){
    if attacking = false {
        attacking = true  
        alarm[0] = melee_fov
        curdir = image_angle
        
        image_angle = obj_player.attack_degree - melee_fov
        direction = image_angle
    }
}