if myhealth+regen*0.1 < stat_health*5 {
myhealth+=regen*0.1
}
if myhealth+regen*0.1 > stat_health*5 {
myhealth=stat_health*5
}
alarm[0]=120