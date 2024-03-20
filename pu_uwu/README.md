# Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)
## [Recommended MLO](https://fivem.gabzv.com/package/4724734)

## Containers (Add these to ox_inventory/modules/items/containers.lua at the bottom)
```lua
setContainerProperties('uwubag', {
	slots = 10,
	maxWeight = 10000,
})
```

## Items (Add these to your items.lua ox_inventory ONLY)
```lua
-- Plushies
	['uwuyellowplush'] = {label = 'UwU Yellow Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwubrownplush'] = {label = 'UwU Brown Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwublueplush'] = {label = 'UwU Blue Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwupurpleplush'] = {label = 'UwU Purple Plush', weight = 100, degrade = 20160, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwupinkrareplush'] = {label = 'UwU Rare Pink Plush', weight = 100, degrade = 4320, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwuredplush'] = {label = 'UwU Red Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwugreenrareplush'] = {label = 'UwU Rare Green Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
	['uwugreenplush'] = {label = 'UwU Green Plush', weight = 100, stack = true, close = true, description = "Its just a UwU Plush Toy"},
```
```lua
	-- UWU Bags
	['uwubag'] = {
		label = 'UwU Bag',
		weight = 1000,
		degrade = 20160,
		stack = true,
		close = true,
		consume = 0
	},
	-- UWU Ingredients
	['batter'] = {label = 'UwU Batter', weight = 100, degrade = 10080, stack = true, close = true, description = "An Ingredient"},
	['noodles'] = {label = 'Dried Noodles', weight = 100, degrade = 5680, stack = true, close = true, description = "An Ingredient"},
	['sodasyrup'] = {label = 'Soda Syrup', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	['egg'] = {label = 'Egg', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	['flour'] = {label = 'Flour', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	['cocoapowder'] = {label = 'Cocoa Powder', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	['mshakeformula'] = {label = 'Milkshake Formula', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	['burgersodasyrup'] = {label = 'Better Soda Syrup', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
	
	-- UWU Drinks
	['uwububbleteamint'] = {label = 'Minty B-T', weight = 1000, degrade = 4320, stack = true, close = true, description = "Matcha Tea with Mint Boba.", client = {status = {thirst = 200000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = {model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5)}, usetime = 2500, cancel = true}},
	['uwububbleteablueberry'] = {label = 'Berry Bubble Tea', weight = 1000, degrade = 4320, stack = true, close = true, description = "Lavender Tea with Blueberry Boba.", client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'tea', usetime = 2500, cancel = true}},
	['uwububbletearose'] = {label = 'Rose Bubble Tea', weight = 1000, degrade = 4320, stack = true, close = true, description = "Sakura Rose Tea with Vanilla Boba.", client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'tea', usetime = 2500, cancel = true}},
	["classicuwutea"] = {label = "UwU Tea (Classic)", weight = 1000, degrade = 5760, stack = true, close = true, client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'tea', usetime = 2500, cancel = true, } },
	["matchauwutea"] = {label = "UwU Tea (Matcha)", weight = 1000, degrade = 5760, stack = true, close = true, client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'tea', usetime = 2500, cancel = true, } },
	["strawberryuwutea"] = {label = "UwU Tea (Strawberry)", weight = 1000, degrade = 5760, stack = true, close = true, client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, prop = 'tea', usetime = 2500, cancel = true, } },
	["chocouwutea"] = {label = "UwU Tea (Chocolate)", weight = 1000, degrade = 5760, stack = true, close = true, client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},
	
	-- UWU Food
	['uwuchocsandy'] = {label = 'UwU Sandy', weight = 1000, degrade = 4320, stack = true, close = true, description = "Sweet Chocolate Biscuit with kitty marshmallows!", client = {status = {hunger = 200000}, anim = 'eating', prop = 'desert', usetime = 2500, cancel = true}},
	['uwubudhabowl'] = {label = 'UwU Budha Bowl', weight = 1000, degrade = 4320, stack = true, close = true, description = "Bowl of nourishment and balance.", client = {status = {hunger = 500000}, anim = 'eating', prop = 'desert', usetime = 2500, cancel = true}},
	['kittymarshmallows'] = {label = 'Uwu Marshmallows', weight = 1000, degrade = 4320, stack = true, close = true, description = "Uwu Kitty Marshmallows", client = {status = {hunger = 100000}, anim = 'eating', prop = 'desert', usetime = 4000, cancel = true}},
	['uwushushi'] = {label = 'UwU Shushi', weight = 1000, degrade = 4320, stack = true, close = true, description = "Designed as a window to your soul.", client = {status = {hunger = 400000}, anim = 'eating', prop = 'desert', usetime = 4000, cancel = true}},
	['uwupancake'] = {label = 'UwU Savory Pancake', weight = 1000, degrade = 4320, stack = true, close = true, description = "Korean savory pancake made with scallions.", client = {status = {hunger = 400000}, anim = 'eating', prop = 'desert', usetime = 4000, cancel = true}},
	['uwucupcake'] = {label = 'UwU Cupcake', weight = 1000, degrade = 4320, stack = true, close = true, description = "Sugar Kitty Cupcake!", client = {status = {hunger = 200000}, anim = 'eating', prop = 'cupcake', usetime = 3000, cancel = true}},
	['uwumisosoup'] = {label = 'UwU Miso Soup', weight = 1000, degrade = 4320, stack = true, close = true, description = "Fungus never tasted so good!", client = {status = {hunger = 400000}, anim = 'eating', prop = 'soup', usetime = 5000, cancel = true}},
	['uwuvanillasandy'] = {label = 'UwU Sandy', weight = 2000, degrade = 4320, stack = true, close = true, description = "Sweet Vanilla Biscuit with kitty marshmallows!", client = {status = {hunger = 50000}, anim = 'eating', prop = 'desert', usetime = 4000, cancel = true}},
	['uwucookie'] = {label = 'UwU Cookie', weight = 2500, degrade = 4320, stack = true, close = true, description = "Sugar Kitty Cookie!", client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
```
## Crafting - Add these to ox_inventory/data/crafting.lua
```lua
{
		items = {
			{name = 'uwuvanillasandy', ingredients = {batter = 1, milk = 2, flour = 1, egg = 1}, duration = 5000, count = 1},
			{name = 'uwuchocsandy', ingredients = {batter = 1, cocoapowder = 1, milk = 2, flour = 1, egg = 1}, duration = 5000, count = 1},
			{name = 'uwubudhabowl', ingredients = {noodles = 1, flour = 1, egg = 2}, duration = 5000, count = 1},
			{name = 'uwushushi', ingredients = {noodles = 2, milk = 1, flour = 2}, duration = 5000, count = 1},
			{name = 'uwupancake', ingredients = {batter = 1, flour = 2, milk = 2, egg = 4}, duration = 5000, count = 1},
			{name = 'uwumisosoup', ingredients = {noodles = 1, milk = 1, flour = 1}, duration = 5000, count = 1},
			{name = 'uwucupcake', ingredients = {batter = 1, milk = 2, egg = 1, flour = 1}, duration = 5000, count = 1},
			{name = 'uwucookie', ingredients = {batter = 1, milk = 1, egg = 2, flour = 1, cocoapowder = 2}, duration = 5000, count = 1},
		},
		points = {vec3(-591.00311279297, -1063.0329589844, 22.317287445068)},
		groups = {['uwucafe'] = 0},
		zones = {
			{coords = vec3(-591.00311279297, -1063.0329589844, 22.317287445068), size = vec3(2, 2, 2), distance = 2, rotation = 0}}},
	-- UwU Drinks Crafting Station
	{
		items = {
			{name = 'chocouwutea', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'classicuwutea', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'matchauwutea', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'strawberryuwutea', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'uwububbletearose', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'uwububbleteamint', ingredients = {mshakeformula = 2}, duration = 7500, count = 1},
			{name = 'uwububbleteablueberry', ingredients = {burgersodasyrup = 1}, duration = 7500, count = 1},
		},
		points = {vec3(-586.67333984375, -1061.9393310547, 22.492137908936)},
		groups = {['uwucafe'] = 0},
		zones = {{coords = vec3(-586.67333984375, -1061.9393310547, 22.492137908936), size = vec3(1, 1., 1), distance = 2, rotation = 70.0}},
	},

```
## Shop - Add to ox_inventory/data/shops.lua
```lua
-- UWU Cafe Shop
	UwU = {
		name = 'UwU Cafe Cabinet',
		groups = {['uwucafe'] = 0},
inventory = {
			{ name = 'batter', price = 0},
			{ name = 'noodles', price = 0},
			{ name = 'sodasyrup', price = 0, },
			{ name = 'egg', price = 0 },
			{ name = 'flour', price = 0 },
			{ name = 'cocoapowder', price = 0 },
			{ name = 'mshakeformula', price = 0, },
			{ name = 'burgersodasyrup', price = 0, },

		}, locations = {
			vec3(-588.5399, -1067.3201, 22.3442)
		}, targets = {
			{ loc = vec3(-588.0399, -1067.3201, 22.3442), length = 2.5, width = 3.0, heading = 267.0, minZ = 20.5, maxZ = 24.0, distance = 6 }
		}
	},

	UwU2 = {
		name = 'UwU Bag Thingie',
		groups = {['uwucafe'] = 0},
inventory = {
			{ name = 'uwubag', price = 0},
			{ name = 'uwupurpleplush', price = 0},
			{ name = 'uwubrownplush', price = 0},
			{ name = 'uwublueplush', price = 0},
			{ name = 'uwupinkrareplush', price = 0},
			{ name = 'uwuredplush', price = 0},
			{ name = 'uwugreenrareplush', price = 0},
			{ name = 'uwugreenplush', price = 0},

		}, locations = {
			vec3(-585.7916, -1055.9081, 22.3442)
		}, targets = {
			{ loc = vec3(-585.7916, -1055.9081, 22.3442), length = 2.5, width = 3.0, heading = 5.0, minZ = 20.5, maxZ = 24.0, distance = 6 }

		}
	},

