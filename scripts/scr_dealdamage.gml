

if attacking = true {

if weapon_type = "melee" {
dmod = 1 + (holder.mydamage/100)
    if oholder = obj_player { //ally
        if place_meeting(x,y,obj_enemy) {
            cdum = instance_nearest(x,y,obj_enemy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
                }
                if damage!=0 {
                cdum = instance_nearest(x,y,obj_enemy)
                cdum.recdamage += damage*dmod
                }
                if eldamage!=0 {
                cdum = instance_nearest(x,y,obj_enemy)
                if element = "fire" {
                    cdum.recfire+=eldamage*dmod*dmod
                }
                if element = "water" {
                    cdum.recwater+=eldamage*dmod
                }
                if element = "wind" {
                    cdum.recwind+=eldamage*dmod
                }
                if element = "earth" {
                    cdum.recearth+=eldamage*dmod
                }
                }
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_dummy))
            }
        if place_meeting(x,y,obj_dummy) {
            cdum = instance_nearest(x,y,obj_dummy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
                }
                if damage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                cdum.recdamage += damage*dmod
                }
                if eldamage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                if element = "fire" {
                    cdum.recfire+=eldamage*dmod*dmod
                }
                if element = "water" {
                    cdum.recwater+=eldamage*dmod
                }
                if element = "wind" {
                    cdum.recwind+=eldamage*dmod
                }
                if element = "earth" {
                    cdum.recearth+=eldamage*dmod
                }
                }
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_dummy))
            }
        }
    
    }//
    if oholder = obj_dummy or oholder = obj_enemy { //enemy
        if place_meeting(x,y,obj_player) {
            cdum = instance_nearest(x,y,obj_player)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
                if damage!=0 {
                cdum = instance_nearest(x,y,obj_player)
                cdum.recdamage += damage*dmod
                }
                if eldamage!=0 {
                cdum = instance_nearest(x,y,obj_player)
                if element = "fire" {
                    cdum.recfire+=eldamage*dmod
                }
                if element = "water" {
                    cdum.recwater+=eldamage*dmod
                }
                if element = "wind" {
                    cdum.recwind+=eldamage*dmod
                }
                if element = "earth" {
                    cdum.recearth+=eldamage*dmod
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
dmod = 1 + (holder.mydamage/100)
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
                cdum.recdamage += holder.weapon.damage*dmod
                }
                if holder.weapon.eldamage!=0 {
                cdum = instance_nearest(x,y,obj_dummy)
                if holder.weapon.element = "fire" {
                    cdum.recfire+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "water" {
                    cdum.recwater+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "wind" {
                    cdum.recwind+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "earth" {
                    cdum.recearth+=holder.weapon.eldamage*dmod
                }
                }
                cdum.lasthitter = holder
                self.hit_list[array_length_1d(self.hit_list)+1] = cdum.id
                //ds_list_add(self.hit_list[id],instance_nearest(x,y,obj_dummy))
                hits-=1
                if hits<=0 {
                    instance_destroy()}
            }
        if place_meeting(x,y,obj_enemy) {
            cdum = instance_nearest(x,y,obj_enemy)
            for (i=0;i!=array_length_1d(self.hit_list);i+=1) {
                if self.hit_list[i]=cdum.id {
                    exit
                }
            }
            //if ds_list_find_index(self.hit_list[id],instance_nearest(x,y,obj_dummy)) = -1 {
                if holder.weapon.damage!=0 {
                cdum = instance_nearest(x,y,obj_enemy)
                cdum.recdamage += holder.weapon.damage*dmod
                }
                if holder.weapon.eldamage!=0 {
                cdum = instance_nearest(x,y,obj_enemy)
                if holder.weapon.element = "fire" {
                    cdum.recfire+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "water" {
                    cdum.recwater+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "wind" {
                    cdum.recwind+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "earth" {
                    cdum.recearth+=holder.weapon.eldamage*dmod
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
        if oholder = obj_dummy or oholder = obj_enemy { //enemy
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
                cdum.recdamage += holder.weapon.damage*dmod
                }
                if holder.weapon.eldamage!=0 {
                cdum = instance_nearest(x,y,obj_player)
                if holder.weapon.element = "fire" {
                    cdum.recfire+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "water" {
                    cdum.recwater+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "wind" {
                    cdum.recwind+=holder.weapon.eldamage*dmod
                }
                if holder.weapon.element = "earth" {
                    cdum.recearth+=holder.weapon.eldamage*dmod
                }
                }
                holder.hits+=1
                holder.misses=0
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
