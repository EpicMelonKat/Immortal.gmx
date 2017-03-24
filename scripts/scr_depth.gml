depth = y*-1

if object_index = obj_weapon {
    if holder.lastdir = "up" {
        depth = holder.depth+1
    }
    if holder.lastdir = "down" {
        depth = holder.depth-1
    }
}
