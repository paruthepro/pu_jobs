# Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)
## [Recommended MLO](https://fivem.gabzv.com/package/5567767)
## Items (Add these to your items.lua ox_inventory ONLY)
```lua
['burgertomato'] = {label = 'Tomato', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['burgerbun'] = {label = 'Bun', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['burgerlettuce'] = {label = 'Lettuce' ,weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgerraw'] = {label = 'Raw Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgersodasyrup'] = {label = 'Soda Syrup', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgermeat'] = {label = 'Cooked Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgerpotato'] = {label = 'Bag of Potatoes', weight = 2500, degrade = 10080, stack = true, close = true, description = "An Ingredient"},
['mshakeformula'] = {label = 'Milkshake Formula', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['milk'] = {label = 'Milk', weight = 500, degrade = 4320, stack = true, close = true},
['upnatom_fries'] = {label = 'C&B Fries', weight = 250, degrade = 4320, stack = true, close = true, description = "Bacon Cheese Fries from Up N Atom", client = {status = {hunger = 300000}, anim = 'eating', prop = 'fries', usetime = 3000, cancel = true}},
['bacon_cheeseburger'] = {label = 'Bacon Cheeseburger', weight = 250, degrade = 4320, stack = true, close = true, description = "Bacon Cheese Burger from Up N Atom", client = {status = {hunger = 550000}, anim = 'eating', prop = 'burger', usetime = 4500, cancel = true}},
['cold_brew_latte'] = {label = 'Up N Atom Latte', weight = 250, degrade = 4320, stack = true, close = true, description = "Special Latte from Up N Atom", client = {status = {thirst = 550000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'bottle', usetime = 3000, cancel = true}},

```
## Crafting - Add these to ox_inventory/data/crafting.lua
```lua
	{
		items = {{name = 'upnatom_fries', ingredients = {burgerpotato = 2}, duration = 5000, count = 1}},
		points = {vec3(92.996353149414, 292.17294311523, 110.25498962402)},
		groups = {['upnatom'] = 0},
		-- Fry Cooker
		zones = {{coords = vec3(92.996353149414, 292.17294311523, 110.25498962402), size = vec3(1, 1., 1), distance = 3, rotation = 0}},
	},
	-- Up N Atom Burger Station
	{
		items = {{name = 'bacon_cheeseburger', ingredients = {burgermeat = 1, burgerlettuce = 1, burgerbun = 2, burgertomato = 1}, duration = 5000, count = 1}},
		points = {vec3(94.076873779297, 291.84536743164, 110.24453735352)},
		groups = {['upnatom'] = 0},
		-- Burger Station
		zones = {{coords = vec3(94.076873779297, 291.84536743164, 110.24453735352), size = vec3(1, 1., 1), distance = 3, rotation = 0,}},
	},
	{
		items = {{name = 'cold_brew_latte', ingredients = {mshakeformula = 1, milk = 2}, duration = 5000, count = 1, }},
		points = {vec3(93.441970825195, 287.07107543945, 110.28532409668)},
		groups = {['upnatom'] = 0},
		-- Up N Atom Drinks Station
		zones = {{coords = vec3(93.441970825195, 287.07107543945, 110.28532409668), size = vec3(1, 1., 1), distance = 3, rotation = 0}},
	},
```
## Storage Data (stashes.lua)
```lua
-- Up N Atom Tray 1
	{
		coords = vec3(90.305793762207, 285.7802734375, 110.13005828857),
		target = {loc = vec3(90.305793762207, 285.7802734375, 110.13005828857), length = 1.0, width = 1.0, heading = 0, minZ = 68.34, maxZ = 70.74, label = 'Open Tray'},
		name = 'upnatomt1', label = 'Open Tray', owner = false, slots = 5, weight = 100000,

	},
	-- Up N Atom Tray 2
	{
		coords = vec3(89.741401672363, 286.90490722656, 110.13005828857),
		target = {loc = vec3(89.741401672363, 286.90490722656, 110.13005828857), length = 1.0, width = 1.0, heading = 0, minZ = 68.34, maxZ = 70.74, label = 'Open Tray'},
		name = 'upnatomt2', label = 'Open Tray', owner = false, slots = 5, weight = 100000,

	},
	-- Up N Atom Tray 3
	{
		coords = vec3(89.173599243164, 288.14028930664, 110.13005828857),
		target = {loc = vec3(89.173599243164, 288.14028930664, 110.13005828857),length = 1.0,width = 1.0,heading = 0,minZ = 68.34,maxZ = 70.74,label = 'Open Tray'},
		name = 'upnatomt3', label = 'Open Tray', owner = false, slots = 5, weight = 100000,

	},
	-- Up N Atom Frozen Storage
	{
		coords = vec3(88.317169189453, 293.46029663086, 110.24760437012),
		target = {loc = vec3(88.317169189453, 293.46029663086, 110.24760437012), length = 2.0, width = 2.0, heading = 0, minZ = 68.34, maxZ = 70.74, label = 'Open Fridge'},
		name = 'atomfridge', label = 'Open Fridge', owner = false, groups = {['upnatom'] = 0}, slots = 100, weight = 10000000,
	},
```