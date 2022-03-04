/// @desc
if (ds_list_empty(bodyHitList)){
	bodyHitRefreshTime = getAttackCDFromAttackSpeed(bodyHitFrequency);
}
if (ds_list_find_index(bodyHitList,other)!=-1){
	ds_list_add(bodyHitList, other);
	other.life -= bodyDamage * damageReducation(other.defense);
}
	