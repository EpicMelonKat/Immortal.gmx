if attacking = true {

if weapon_type = "melee" {
    if holder = obj_player or holder = obj_npc {
        if place_meeting(x,y,obj_dummy) {
            if ds_list_find_index(hit_list,instance_nearest(x,y,obj_dummy)) = -1 {
                if damage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                cdum.recdamage += damage
                }
                if eldamage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                if element = "fire" {
                    cdum.recfire+=eldamage
                }
                if element = "water" {
                    cdum.recwater+=eldamage
                }
                if element = "wind" {
                    cdum.recwind+=eldamage
                }
                if element = "earth" {
                    cdum.recearth+=eldamage
                }
                }
                ds_list_add(hit_list,instance_nearest(x,y,obj_dummy))
            }
        }
    
    }
}

}

if object_index = obj_projectile {
    if holder.weapon.weapon_type = "magic" {
        if holder = obj_player or holder = obj_npc {
        if place_meeting(x,y,obj_dummy) {
            if ds_list_find_index(hit_list,instance_nearest(x,y,obj_dummy)) = -1 {
                if holder.weapon.damage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                cdum.recdamage += holder.weapon.damage
                }
                if holder.weapon.eldamage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                if holder.weapon.element = "fire" {
                    cdum.recfire+=holder.weapon.eldamage
                }
                if holder.weapon.element = "water" {
                    cdum.recwater+=holder.weapon.eldamage
                }
                if holder.weapon.element = "wind" {
                    cdum.recwind+=holder.weapon.eldamage
                }
                if holder.weapon.element = "earth" {
                    cdum.recearth+=holder.weapon.eldamage
                }
                }
                ds_list_add(hit_list,instance_nearest(x,y,obj_dummy))
                hits-=1
                if hits<=0 {
                    ds_list_destroy(hit_list)
                    instance_destroy()}
            }
        }
    
    }
    
    }
    if holder.weapon.weapon_type != "magic" {
        instance_destroy()
    }
}

