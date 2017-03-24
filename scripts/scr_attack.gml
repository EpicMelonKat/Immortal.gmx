if attacking = true {
    x = holder.x
    y = holder.y
}

if mouse_check_button(mb_left) {
    if attackable = true {
    if attacking = false {
        self.hit_list = -1
        attacking = true 
        attackable = false
        alarm[0] = melee_fov*2/4
        curdir = image_angle
        tdir = point_direction(x,y,obj_Aim.x,obj_Aim.y)
        
        if tdir > 0 and tdir < 90 {
            direction = tdir+melee_fov-90
        }
        if tdir >=90 and tdir < 180 {
            direction = tdir-melee_fov-90
        }
        if tdir >=180 and tdir < 270 {
            direction = tdir+melee_fov+90+90+90
        }
        if tdir >=270 and tdir < 360 {
            direction = tdir-melee_fov-90
        }
        
        //if tdir > 0 and tdir < 180 { //up
       //     direction = tdir-90-melee_fov
        ////}
        //if tdir >= 180 and tdir <= 360 {
        //    direction = tdir-90-melee_fov
        //}
        
        
        
        //if (curdir > 90 and curdir < 270) {
        //direction = point_direction(x,y,obj_Aim.x,obj_Aim.y) -90 - melee_fov
        //}
        
        image_angle=direction
    
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
