if recexp != 0 {

t_recexp += round(recexp)
if t_recexp < 1 {
t_recexp = 1
}

randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)


dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recexp*-1

recexp = 0
}
if t_recexp > 0 {
current_exp += t_recexp/2
t_recexp/=2
}
