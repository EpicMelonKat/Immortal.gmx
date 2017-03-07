hand_distance = 24
hand_indistance = 16
hand_heightdist = 10

xval = obj_player.x
yval = obj_player.y
y = yval+hand_heightdist

pos[0] = xval-hand_distance
pos[1] = xval-hand_indistance
pos[2] = xval-hand_distance
pos[3] = xval-hand_distance

pos[4] = xval+hand_distance
pos[5] = xval+hand_indistance
pos[6] = xval+hand_distance
pos[7] = xval+hand_distance

if obj_player.image_index = 0 {
    dmod = -1
}
if obj_player.image_index = 1 {
    dmod = -1
}
if obj_player.image_index = 2 {
    dmod = -1
}
if obj_player.image_index = 3 {
    dmod = -1
}

if obj_player.image_index = 4 {
    dmod = 1
}
if obj_player.image_index = 5 {
    dmod = 1
}
if obj_player.image_index = 6 {
    dmod = 1
}
if obj_player.image_index = 7 {
    dmod = 1
}



x = pos[obj_player.image_index]

scr_depth()
depth+=dmod

if x > obj_player.x {
    depth = obj_player.depth+1
}
if x < obj_player.x {
    depth = obj_player.depth-1
}