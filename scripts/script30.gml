for (i=0;i!=array_length_1d(rival_list);i+=1) {
    if instance_exists(rival_list[i])=true {
        nrival = instance_nearest(x,y,rival_list[i])
        if distance_to_object(nrival) < nearest and distance_to_object(nrival) < radview {
            if misses <= 3 { //Direct Aiming
                if instance_exists(nrival) {
                aimer.x = nrival.x
                aimer.y = nrival.y
                aimermode = "target"
                }
            }
            if misses > 3 { //Experimental Aiming
                if instance_exists(nrival) {
                nrival.codetarget=id
                with(nrival) {
                    codetarget.aimer.x = x+(xmod*(distance_to_object(codetarget)/8))//x+xmod
                    codetarget.aimer.y = y+(ymod*(distance_to_object(codetarget)/8))//y+ymod
                    aimermode = "target"
                }
                }
            }
        }
            
    }
}
