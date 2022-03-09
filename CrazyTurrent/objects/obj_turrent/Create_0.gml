/// @description initial skill levels
// You can write your code in this editor
skillLv = [0,0,0,0,0,0,0,0,
	0,0,0,0]
attributeBufferName = ["Attack Boost","Attack Speed Boost","Range Boost","Defense Boost",
	"Homing Attack","Shrapnel","Scatter Shot","Focus Fire","Critical Shot","Chaos Amplifier","Chain Lightning","Piercing Bullet"
	,"Frost Attack","Poison Attack","Damage Amplication","Burn Attack"]
attributeName = ["Attack","Attack Speed", "Range", "Defense",
	"Homing Attack","Shrapnel","Scatter Shot","Focus Fire","Critical Shot","Chaos Amplifier","Chain Lightning","Piercing Bullet"
	,"Frost Attack","Poison Attack","Damage Ampli","Burn Attack"]
life = maxLife;

guiHideButton = createButton("-",1,10,920,40,40)
with guiHideButton{
	drawVal = false;
}

bodySprite = spr_body;