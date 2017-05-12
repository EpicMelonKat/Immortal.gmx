if mouse_wheel_down()=true {
    if weaponsel < 6 {
        weaponsel+=1
    }
}
if mouse_wheel_up()=true {
    if weaponsel>1 {
        weaponsel-=1
    }
}
if instance_exists(obj_player) {
    sprite_index = obj_player.inventory[weaponsel]
}
