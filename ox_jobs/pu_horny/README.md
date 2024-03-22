# Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)

## Items (Add these to your items.lua ox_inventory ONLY)
```lua
['burgertomato'] = {label = 'Tomato', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['burgerbun'] = {label = 'Bun', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['burgerlettuce'] = {label = 'Lettuce' ,weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgerraw'] = {label = 'Raw Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgersodasyrup'] = {label = 'Soda Syrup', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgermeat'] = {label = 'Cooked Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['burgerpotato'] = {label = 'Bag of Potatoes', weight = 2500, degrade = 10080, stack = true, close = true, description = "An Ingredient"},
['cola'] = {label = 'eCola', weight = 350, degrade = 4320, stack = true, client = {status = {thirst = 200000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = {model = `ng_proc_sodacan_01a`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) }, usetime = 2500}},
['cheese_fries'] = {label = 'Cheesy Fries', weight = 250, degrade = 4320, stack = true, close = true, description = "Special Cheesy Fries from Hornys", client = {status = {hunger = 300000}, anim = 'eating', prop = 'fries', usetime = 3000, cancel = true}},
['sirloin_burger'] = {label = 'Big Dog Burger', weight = 1000, degrade = 4320, stack = true, close = true, description = "Special Burger from Hornys", client = {status = {hunger = 500000, thirst = 100000}, anim = 'eating', prop = 'burger', usetime = 4000, cancel = true}},
['steak_and_cheese'] = {label = 'S&C Baguette', weight = 1000, degrade = 4320, stack = true, close = true, description = "Steak & Cheese Bagguette from Hornys", client = {status = {hunger = 600000}, anim = 'eating', prop = 'burger', usetime = 5000, cancel = true}},
['iced_caffe_latte'] = { label = 'Hornys Latte', weight = 1000, degrade = 4320, stack = true, close = true, description = "Special Caffe Latte from Hornys", client = {status = {thirst = 550000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'bottle', usetime = 3000, cancel = true}},
```
## Crafting - Add these to ox_inventory/data/crafting.lua
```lua
-- Horny Fries Making Station
	{
		items = {{name = 'cheese_fries', ingredients = {burgerpotato = 2}, duration = 5000, count = 1}},
		points = {vec3(1253.9837646484, -353.31524658203, 69.209396362305)},
		groups = {['hornys'] = 0},
		zones = {
			{coords = vec3(1253.9837646484, -353.31524658203, 69.209396362305),size = vec3(1, 1., 1),distance = 3,rotation = 0}},
	},
	-- Horny Burger Station
	{
		items = {
		{name = 'sirloin_burger', ingredients = {burgermeat = 2, burgerlettuce = 1, burgerbun = 1, burgertomato = 1} ,duration = 5000, count = 1},
		{name = 'steak_and_cheese', ingredients = {burgermeat = 2, burgerlettuce = 1, burgerbun = 1, burgertomato = 2}, duration = 5000, count = 1}},
		points = {vec3(1253.3078613281, -355.45999145508, 69.071067810059)},
		groups = {['hornys'] = 0},
		zones = {{coords = vec3(1253.3078613281, -355.45999145508, 69.071067810059),size = vec3(1, 1., 1),distance = 3,rotation = 0}},
	},
	-- Horny Drinks Making Station
	{
		items = {
		{name = 'iced_caffe_latte', ingredients = {mshakeformula = 1, milk = 2}, duration = 5000, count = 1},
		{name = 'cola', ingredients = {burgersodasyrup = 1}, duration = 5000, count = 1},
		},
		points = {vec3(1246.4880371094, -356.49221801758, 69.217559814453)},
		groups = {['hornys'] = 0},
		zones = {{coords = vec3(1246.4880371094, -356.49221801758, 69.217559814453), size = vec3(1, 1., 1), distance = 3, rotation = 0}},
	},