# Mechanic Job / Tunershop

## There are two recommended MLO's listed below (Bennys & Tunershop from Gabz)
### [Recommended MLO](https://fivem.gabzv.com/package/5500605)
### [Recommended MLO 2](https://fivem.gabzv.com/package/4724521)

## Items.lua Additions
```lua
['lockpick'] = {label = 'Lockpick', weight = 500, degrade = 20160, stack = true, close = true, description = "Basic, just enough for the usual needs..."},
['advancedlockpick'] = {label = 'Advanced Lockpick', weight = 1000, degrade = 20160, stack = true, close = true, description = "If you lose your keys a lot this is very useful..."},
['repairkit'] = {label = 'Repairkit', weight = 2500, degrade = 20160, stack = true, close = true, description = "A nice toolbox with stuff to repair your vehicle"},
['advancedrepairkit'] = {label = 'Advanced Repairkit', weight = 4000, degrade = 20160, stack = true, close = true, description = "A nice toolbox to repair your vehicle"},
['iron'] = {label = 'Iron', weight = 500, degrade = 20160, stack = true, close = false, description = "Handy piece of metal that you can probably use for something"},
['steel'] = {label = 'Steel', weight = 500, degrade = 40160, stack = true, close = false, description = "Nice piece of metal that you can probably use for something"},
['lead'] = {label = 'Lead', weight = 750 , degrade = 40320, stack = true, description = 'Can be used to craft something maybe?'},
['plastic'] = {label = 'Plastic', weight = 100, degrade = 20160, stack = true, close = false, description = "A bit of useful plastic"},
['aluminum'] = {label = 'Aluminium', weight = 250, degrade = 10080, stack = true, close = false, description = "Nice piece of metal that you can probably use for something"},
['body_kit'] = {label = 'Body Kit', weight = 5000, stack = true, close = true, degrade = 10080, description = "A mechanic only toolkit for body repairs"},
['internals_kit'] = {label = 'Internals Toolkit', weight = 5000, stack = true, close = true, degrade = 10080, description = "Toolkit for applying parts."},
['engine_level1'] = {label = 'Engine Upgrade (L1)', weight = 10000, degrade = 20160, stack = true, close = true},
['engine_level2'] = {label = 'Engine Upgrade (L2)', weight = 10000, degrade = 20160, stack = true, close = true},
['engine_level3'] = {label = 'Engine Upgrade (L3)', weight = 10000, degrade = 20160, stack = true, close = true},
['engine_level4'] = {label = 'Engine Upgrade (L4)', weight = 10000, degrade = 20160, stack = true, close = true},
['trans_level1'] = {label = 'Trans Upgrade (L1)', weight = 10000, degrade = 20160, stack = true, close = true},
['trans_level2'] = {label = 'Trans Upgrade (L2)', weight = 10000, degrade = 20160, stack = true, close = true},
['trans_level3'] = {label = 'Trans Upgrade (L3)', weight = 10000, degrade = 20160, stack = true, close = true},
['suspension_level1'] = {label = 'Suspension (L1)', weight = 10000, degrade = 20160, stack = true, close = true},
['suspension_level2'] = {label = 'Suspension (L2)', weight = 10000, degrade = 20160, stack = true, close = true},
['suspension_level3'] = {label = 'Suspension (L3)', weight = 10000, degrade = 20160, stack = true, close = true},
['suspension_level4'] = {label = 'Suspension (L4)', weight = 10000, degrade = 20160, stack = true, close = true},
['brakes_level1'] = {label = 'Brakes Upgrade (L1)', weight = 10000, degrade = 20160, stack = true, close = true},
['brakes_level2'] = {label = 'Brakes Upgrade (L2)', weight = 10000, degrade = 20160, stack = true, close = true},
['brakes_level3'] = {label = 'Brakes Upgrade (L3)', weight = 10000, degrade = 20160, stack = true, close = true},
['turbo'] = {label = 'Turbo Upgrade', weight = 10000, degrade = 20160, stack = true, close = true},
['armor_level1'] = {label = 'Armor Upgrade (L1)', weight = 10000, degrade = 20160, stack = true, close = true},
['armor_level2'] = {label = 'Armor Upgrade (L2)', weight = 10000, degrade = 20160, stack = true, close = true},
['armor_level3'] = {label = 'Armor Upgrade (L3)', weight = 10000, degrade = 20160, stack = true, close = true},
['armor_level4'] = {label = 'Armor Upgrade (L4)', weight = 10000, degrade = 20160, stack = true, close = true},
-- ['fake_plate'] = {label = 'License Plate', weight = 1000, degrade = 20160, description = "A license plate", stack = true, close = true}, -- For future use (DO NOT ADD)
```
## Crafting.lua changes
```lua
{
		items = {
			{name = 'lockpick', ingredients = {iron = 1, plastic = 2}, duration = 5000, count = 1}, 
            {name = 'advancedlockpick', ingredients = {iron = 4, aluminum = 1}, duration = 5000, count = 1}, 
            {name = 'repairkit', ingredients = {iron = 5, aluminum = 2, steel = 1}, duration = 5000, count = 1}, 
            {name = 'advancedrepairkit', ingredients = {iron = 10, aluminum = 4, steel = 2}, duration = 7500, count = 1}, 
            {name = 'iron', ingredients = {carparts = 1}, duration = 10000, count = math.random(1, 4)}, 
            {name = 'steel', ingredients = {carparts = 1}, duration = 10000, count = math.random(1, 2)}, 
            {name = 'lead', ingredients = {carparts = 1}, duration = 10000, count = math.random(1, 2)},
			{name = 'plastic', ingredients = {carparts = 1}, duration = 10000, count = math.random(1, 8) },
			{name = 'aluminum', ingredients = {carparts = 1}, duration = 10000, count = math.random(1, 6)},
			{name = 'body_kit', ingredients = {iron = 6, aluminum = 4, steel = 2}, duration = 10000, count = 1},
			{name = 'internals_kit', ingredients = {iron = 6, aluminum = 4, steel = 2}, duration = 10000, count = 1},
			{name = 'engine_level1', ingredients = {iron = 8, aluminum = 12, steel = 7}, duration = 10000, count = 1},
			{name = 'engine_level2', ingredients = {iron = 12, aluminum = 18, steel = 9}, duration = 10000, count = 1},
			{name = 'engine_level3', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'engine_level4', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'trans_level1', ingredients = {iron = 8, aluminum = 12, steel = 7}, duration = 10000, count = 1},
			{name = 'trans_level2', ingredients = {iron = 12, aluminum = 18, steel = 9}, duration = 10000, count = 1},
			{name = 'trans_level3', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'suspension_level1', ingredients = {iron = 8, aluminum = 12, steel = 7}, duration = 10000, count = 1},
			{name = 'suspension_level2', ingredients = {iron = 12, aluminum = 18, steel = 9}, duration = 10000, count = 1},
			{name = 'suspension_level3', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'suspension_level4', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'brakes_level1', ingredients = {iron = 8, aluminum = 12, steel = 7}, duration = 10000, count = 1},
			{name = 'brakes_level2', ingredients = {iron = 12, aluminum = 18, steel = 9}, duration = 10000, count = 1},
			{name = 'brakes_level3', ingredients = {iron = 18, aluminum = 28, steel = 14}, duration = 10000, count = 1},
			{name = 'turbo', ingredients = {iron = 24, aluminum = 34, steel = 20}, duration = 10000, count = 1},
		},
		points = {
			-- Bennys Vice Bench
			vec3(-206.03337097168, -1335.7420654297, 31.385339736938),
			-- Bennys Left side Bench
			vec3(-198.0145111084, -1317.1179199219, 31.093990325928),
			-- Tuner Shop Red Toolbox
			vec3(121.37577056885, -3025.0891113281, 7.0208621025085),
			-- Tuner Shop Grinder Bench
			vec3(135.28346252441, -3051.1826171875, 6.9138259887695)},
		groups = {['mechanic'] = 0, ['tunershop'] = 0},
		zones = {
			{		-- Vice Bench
				coords = vec3(-206.03337097168, -1335.7420654297, 31.385339736938), size = vec3(1, 1., 1), distance = 2, rotation = 70.0},
			{		-- Left side Bench 
            coords = vec3(-198.0145111084, -1317.1179199219, 31.093990325928), size = vec3(1, 1., 1), distance = 2, rotation = 70.0},
			{		-- Tuner Shop Red Toolbox
				coords = vec3(121.37577056885, -3025.0891113281, 7.0208621025085), size = vec3(1, 1., 1), distance = 2, rotation = 70.0},
			{		-- Tuner Shop Grinder Bench
				coords = vec3(135.28346252441, -3051.1826171875, 6.9138259887695), size = vec3(1, 1., 1), distance = 2, rotation = 70.0,},
		},
	},
```
## shops.lua Shop
```lua
MechanicSupplies = {
		name = 'Mechanic Supply Shop',
		groups = {['tunershop'] = 0,['mechanic'] = 0,},
        inventory = {{name = 'steel', price = 25, },{name = 'iron', price = 15, },{name = 'plastic', price = 10, },{name = 'lead', price = 100, },},
		locations = {vec3(377.61236572266, -814.62231445313, 29.120674133301)},
		targets = {{loc = vec3(377.61236572266, -814.62231445313, 29.120674133301), length = 1.0, width = 1.0, heading = 140.45, minZ = 29.0, maxZ = 30.0, distance = 2}}
	},
```