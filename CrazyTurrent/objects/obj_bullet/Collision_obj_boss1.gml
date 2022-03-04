/// @desc
reducedDamage = damage * damageReducation(other.defense);
other.life -= reducedDamage

//mana drain
obj_player.cur_mana += manaStealLV;
instance_destroy()

