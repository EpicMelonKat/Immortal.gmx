global.ally_list = ds_list_create()
global.enemy_list = ds_list_create()

ds_list_add(global.ally_list,obj_player)
ds_list_add(global.ally_list,obj_npc)

ds_list_add(global.enemy_list,obj_dummy)
