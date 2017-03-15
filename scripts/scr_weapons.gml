math_set_epsilon(0.000001)
global.weapon_list = ds_list_create()

// Type, Element, DistDamageAffector, DistElementalAffector, Use Speed, Ability Cooldown (Sec), FOV
// 1 = 1dmg/1pixel    100pixels = 100dmg
// 0.01 = 0.01/1pixel 100pixels = 1dmg


// Set weapon values here:
scr_atw(spr_woodensword,"melee","",0.0001,0,0.5,0,50)
scr_atw(spr_sledgehammer,"melee","",0.0005,0,1.2,30,50)
scr_atw(spr_ninjadagger,"melee","",0.0004,0,0.5,20,20)
scr_atw(spr_purityblade,"melee","",0.001,0,0.4,0,50)
scr_atw(spr_scythe,"melee","",0.0009,0,1,0,55)
scr_atw(spr_waterstaff,"magic","water",0.00001,0.0001,0.7,0,25)
scr_atw(spr_firestaff,"magic","fire",0.00001,0.0001,0.7,0,25)
scr_atw(spr_windstaff,"magic","wind",0.00001,0.0001,0.7,0,25)
scr_atw(spr_earthstaff,"magic","earth",0.00001,0.0001,0.7,0,25)
scr_atw(spr_holystaff,"magic","",0.0009,0,0.7,0,25)
scr_atw(spr_basicbow,"range","",0.0001,0,0.5,0,15)
