if object_index = obj_player or object_index = obj_ally {
    rival_list[1]=obj_dummy
    rival_list[2]=obj_enemy
}
if object_index = obj_enemy or object_index = obj_dummy{
    rival_list[1]=obj_player
    rival_list[2]=obj_ally
}
