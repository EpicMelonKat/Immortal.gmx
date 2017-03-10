global.weapon_list = ds_list_create()

// Type, DistDamageAffector, DistElementalAffector, Use Speed, Ability Cooldown (Sec), FOV
// 1 = 1dmg/1pixel    100pixels = 100dmg
// 0.01 = 0.01/1pixel 100pixels = 1dmg


// Set weapon values here:
ds_list_add(global.weapon_list,spr_woodensword,"melee",0.01,0,5,0,50)
ds_list_add(global.weapon_list,spr_firestaff,"magic",0.1,0.05,1,0,10)
