draw_self()
if object_index != obj_player {
draw_healthbar(x-40,y+sprite_height/3,x+40,y+sprite_height/3+5,(myhealth/maxhealth)*100,c_black,c_red,c_red,0,1,1)
}
draw_set_font(fnt_names)
if object_index = obj_dummy {
    draw_text(x,y+sprite_height/3-8,"Lvl " + string(round(level)) + " Dummy")
}
if object_index = obj_player {
    draw_text(x,y+sprite_height/3-8,"Player")
}
if sprite_index = spr_challenger {
    draw_text(x,y+sprite_height/3-8,"Challenger")
}
