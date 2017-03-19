

if attacking = true {

if weapon_type = "melee" {
    if oholder = obj_player { //ally
        if place_meeting(x,y,obj_dummy) {
            cdum = instance_nearest(x,y,obj_dummy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
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
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_dummy))
            }
        }
    
    }//
    if oholder = obj_dummy { //enemy
        if place_meeting(x,y,obj_player) {
            cdum = instance_nearest(x,y,obj_player)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
                if damage!=0 {
                cdum = instance_nearest(x,y,obj_player)
                cdum.recdamage += damage
                }
                if eldamage!=0 {
                cdum = instance_nearest(x,y,obj_player)
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
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
            }
        }
    
    }//
    
    
//}

//}

if object_index = obj_projectile {
    if holder.weapon.weapon_type = "magic" {
        if oholder = obj_player { //ally
        if place_meeting(x,y,obj_dummy) {
            cdum = instance_nearest(x,y,obj_dummy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
            //if ds_list_find_index(self.hit_list[id],instance_nearest(x,y,obj_dummy)) = -1 {
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
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_dummy))
                hits-=1
                if hits<=0 {
                    instance_destroy()}
            }
        //}
    
    }//
        if oholder = obj_dummy { //enemy
        if place_meeting(x,y,obj_player) {
            //if ds_list_find_index(self.hit_list[id],instance_nearest(x,y,obj_player)) = -1 {
            cdum = instance_nearest(x,y,obj_dummy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
                if holder.weapon.damage!=0 {
                cdum = instance_nearest(x,y,obj_player)
                cdum.recdamage += holder.weapon.damage
                }
                if holder.weapon.eldamage!=0 {
                cdum = instance_nearest(x,y,obj_player)
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
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_player))
                hits-=1
                if hits<=0 {
                    instance_destroy()}
            }
        //}
    
    }//
    
    }
    if holder.weapon.weapon_type != "magic" {
        instance_destroy()
    }
}
