reducedDamage = damage * damageReducation(other.defense);
other.life -= reducedDamage
other.takingDamage = 5 //for hit effect
//mana drain
obj_player.cur_mana += manaStealLV*2;
audio_play_sound(sd_hit,10,false)
instance_create_depth(other.x,other.y,0,obj_fx)
instance_destroy()

