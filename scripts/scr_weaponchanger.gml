//for testing
wep[1]=spr_basicbow
wep[2]=spr_earthstaff
wep[3]=spr_firestaff
wep[4]=spr_windstaff
wep[5]=spr_waterstaff
wep[6]=spr_holystaff
wep[7]=spr_purityblade
wep[8]=spr_ninjadagger
wep[9]=spr_scythe
wep[10]=spr_sledgehammer
wep[11]=spr_woodensword
wep[12]=spr_dynastyblade
wep[13]=spr_crystil
wepmax = 13

if mouse_wheel_down() {
    if mwep < wepmax {
        mwep+=1
    }
}
if mouse_wheel_up() {
    if mwep > 1 {
        mwep-=1
    }
}

sprite_index = wep[mwep]