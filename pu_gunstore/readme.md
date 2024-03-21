# Gunstore Job

## [Recommended MLO - Shop](https://fivem.gabzv.com/package/5024631)
## [Recommended MLO - Crafting Area](https://www.gta5-mods.com/maps/underground-gun-store-mlo-sp-fivem)

## Item Data (items.lua)
```lua
['casing'] = {label = 'Casing', weight = 10, degrade = 40320, stack = true, description = 'Brass Casings for manufacturing ammunition'},
['lead_bullet'] = {label = 'Lead Tips', weight = 10, degrade = 40320, stack = true, description = 'Lead Bullet Tips for manufacturing ammunition'},
['gunpowder'] = {label = 'Gun powder', weight = 1, degrade = 40320, stack = true, description = 'Black Powder for manufacturing ammunition'},
['plastic'] = {label = 'Plastic', weight = 100, degrade = 20160, stack = true, close = false, description = "A bit of useful plastic"},
['pistol_ammo_box'] = {label = 'Pistol Ammo Box', weight = 500, degrade = 10080, stack = true, close = true},
['smg_ammo_box'] = {label = 'SMG Ammo Box', weight = 500, degrade = 10080, stack = true, close = true},
['shotgun_ammo_box'] = {label = 'Shotgun Ammo Box', weight = 500, degrade = 10080, stack = true, close = true},
['rifle_ammo_box'] = {label = 'Rifle Ammo Box', weight = 500, degrade = 10080, stack = true, close = true},
['sniper_ammo_box'] = {label = 'Sniper Ammo Box', weight = 500, degrade = 10080, stack = true, close = true},
```
## Crafting Data (crafting.lua)
```lua
{
		items = {
			{name = 'pistol_ammo_box', ingredients = {gunpowder = 115, lead_bullet = 50, plastic = 5, casing = 50}, duration = 5000, count = 1},
			{name = 'shotgun_ammo_box', ingredients = {gunpowder = 150, lead_bullet = 50, plastic = 5, casing = 50}, duration = 5000, count = 1},
			{name = 'smg_ammo_box', ingredients = {gunpowder = 125, lead_bullet = 50, plastic = 5, casing = 50}, duration = 5000, count = 1},
			{name = 'rifle_ammo_box', ingredients = {gunpowder = 200, lead_bullet = 50, plastic = 5, casing = 50}, duration = 5000, count = 1},
			{name = 'sniper_ammo_box', ingredients = {gunpowder = 175, lead_bullet = 50, plastic = 5, casing = 50}, duration = 5000, count = 1},
		},
		points = {vec3(-597.04498291016, 220.08599853516, 74.203102111816)},
		groups = {['gunshop'] = 0},
		-- Hidden Crafting Room
        zones = {{coords = vec3(-597.04498291016, 220.08599853516, 74.203102111816), size = vec3(1, 1., 1), distance = 3, rotation = 0}}},
```
## Shop Data (shops.lua)
```lua
GunSupplies = {
		name = 'Gun Supply Shop',
		groups = {['gunshop'] = 0},
		inventory = {{name = 'gunpowder', price = 5}, {name = 'lead_bullet', price = 5}, {name = 'plastic', price = 1}, {name = 'casing', price = 10}},
		locations = {vec3(-127.68863677979, 1921.9737548828, 197.24088745117)}, 
        targets = {{loc = vec3(-127.68863677979, 1921.9737548828, 197.24088745117), length = 2.0, width = 2.0, heading = 65.0, minZ = 197.0, maxZ = 197.8, distance = 2.0}}},
```
## Stash Data (stashes.lua)
```lua
-- Guns N Roses Ammuncation - Legion
	{
		coords = vec3(14.364632606506, -1106.4880371094, 29.397813796997),
		target = {loc = vec3(14.364632606506, -1106.4880371094, 29.397813796997), length = 1.0, width = 1.0, heading = 32, minZ = 30.34, maxZ = 40.74, label = 'Open Weapon Storage'},
		name = 'gnrbackroom',
		label = 'Weapon Storage',
		owner = false,
		groups = {['gunshop'] = 0},
		slots = 200,
		weight = 10000000,
	},
    {
		coords = vec3(14.364632606506, -1106.4880371094, 29.397813796997),
		target = {loc = vec3(14.364632606506, -1106.4880371094, 29.397813796997), length = 1.0, width = 1.0, heading = 32, minZ = 30.34, maxZ = 40.74, label = 'Open Weapon Storage'},
		name = 'gs_tray',
		label = 'Weapon Tray',
		owner = false,
		slots = 5,
		weight = 10000,
	},
```