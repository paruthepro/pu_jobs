# Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)

## Items (Add these to your items.lua ox_inventory ONLY)
```lua
['ground_weed'] = {label = 'Ground Weed', weight = 100, degrade = 5760, stack = true, close = true, description = "Ground up weed from the grinder"},
['weedplant_branch'] = {label = 'Weed Branch', weight = 100, degrade = 5760, stack = true, close = true, description = "Freshly picked weed branch!"},
```
## Crafting - Add these to ox_inventory/data/crafting.lua
```lua
-- Weed Shop Grinding
	{
		items = {{name = 'ground_weed', ingredients = {weedplant_branch = 1}, duration = 30000, count = math.random(15, 20)}},
		points = {vec3(375.66381835938, -816.44848632813, 29.229221343994)},
		groups = {['weedshop'] = 0},
		zones = {{coords = vec3(375.66381835938, -816.44848632813, 29.229221343994), size = vec3(1, 1., 1), distance = 2, rotation = 70.0}},
	},