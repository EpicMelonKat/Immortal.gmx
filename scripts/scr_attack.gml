if mouse_check_button(mb_left) {
    if attackable = true {
    if attacking = false {
        self.hit_list = -1
        attacking = true 
        attackable = false
        alarm[0] = melee_fov*2/4
        curdir = image_angle
        
        image_angle = point_direction(x,y,obj_Aim.x,obj_Aim.y) -90 - melee_fov
        direction = image_angle
    
        if weapon_type = "magic" {
            proj = instance_create(holder.x,holder.y,obj_projectile)
            proj.direction = point_direction(holder.x,holder.y,obj_Aim.x,obj_Aim.y)
            proj.speed = sprite_height/1.2
            proj.holder = holder
            proj.oholder = oholder
        }
    }
    }
}
