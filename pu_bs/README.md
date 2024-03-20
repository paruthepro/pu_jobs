## Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)
## Containers (Add these toox_inventory/modules/items/containers.lua at the bottom)
```lua
setContainerProperties('burgermurdermeal', {
	slots = 5,
	maxWeight = 5000,
})
```
## Items (Add these to your items.lua ox_inventory ONLY)
```lua
['burgertoy1'] = { label = 'Action Figure', weight = 500, stack = true, close = false, description = "An Action Figure From the late 90's" },
['burgertoy2'] = { label = 'Pink Teddy', weight = 250, stack = true, close = false, description = "A Fluffy Pink Teddy from the Atic" },
['burgercoupon10'] = { label = 'BS Coupon 10% Off', weight = 10, degrade = 10080, stack = true, close = false, description = "10% Off Coupon" },
['burgercoupon15'] = { label = 'BS Coupon 15% Off', weight = 10, degrade = 4320, stack = true, close = false, description = "15% Off Coupon" },
['burgercoupon25'] = { label = 'BS Coupon 25% Off', weight = 10, degrade = 10080, stack = true, close = false, description = "25% Off Coupon" },
['burgertomato'] = { label = 'Tomato', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient" },
['burgerbun'] = { label = 'Bun', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient" },
['burgerlettuce'] = { label = 'Lettuce' ,weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient" },
['burgerraw'] = { label = 'Raw Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient" },
['burgersodasyrup'] = { label = 'Soda Syrup', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient" },
['burgermeat'] = { label = 'Cooked Patty', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient" },
['burgerpotato'] = { label = 'Bag of Potatoes', weight = 2500, degrade = 10080, stack = true, close = true, description = "An Ingredient" },
['burgermshake'] = { label = 'BS Milkshake', weight = 1000, degrade = 4320, stack = true, close = true, description = "Brain Freeeeeeezzzzzee" },
['burgermurdermeal'] = { label = 'Murder Meal Box', weight = 2000, degrade = 4320, stack = false, close = false, consume = 0, description = "An Amazing Murder Meal with a chance of a toy." },
["burgersoftdrink"] = { label = "Soft Drink", weight = 125, degrade = 4840, stack = true, close = true, description = "An Ice Cold Drink.", client = {}},
['burgerbleeder'] = { label = 'Bleeder', weight = 1000, degrade = 4320, stack = true, close = true, description = "Bleeder Burger", client = { status = { hunger = 400000 }, anim = 'eating', prop = 'burger', usetime = 2500, cancel = true }},
['burgerfries'] = { label = 'Fries', weight = 1000, degrade = 4320, stack = true, close = true, description = "Burgershot Fries", client = { status = { hunger = 150000 }, anim = 'eating', prop = 'fries', usetime = 2500, cancel = true }},
['burgerheartstopper'] = { label = 'Heartstopper', weight = 2500, degrade = 4320 ,stack = true, close = true, description = "Burgershot Heartstopper", client = {status = { hunger = 500000 }, anim = 'eating', prop = 'burger', usetime = 2500, cancel = true }},
['burgermeatfree'] = { label = 'Meat Free Burger', weight = 1000, degrade = 4320, stack = true, close = true, description = "Vegan Burger", client = { status = { hunger = 250000 }, anim = 'eating', prop = 'burger', usetime = 2500, cancel = true }},
['burgermoneyshot'] = { label = 'Moneyshot Burger', weight = 3000, degrade = 4320, stack = true, close = true, client = { status = { hunger = 200000 }, anim = 'eating', prop = 'burger', usetime = 2500, cancel = true }},
['burgertorpedo'] = { label = 'Torpedo Burger', weight = 3100, degrade = 4320, stack = true, close = true, description = "Burgershot Torpedo Burger", client = { status = { hunger = 200000 }, anim = 'eating', prop = 'burger', usetime = 2500, cancel = true }},
```
```lua
-- Burgershot Burger Crafting
	{
		items = {
			{
				name = 'burgerbleeder',
				ingredients = {
					burgermeat = 1,
					burgerlettuce = 1,
					burgerbun = 1,
					burgertomato = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'burgermoneyshot',
				ingredients = {
					burgermeat = 1,
					burgerlettuce = 1,
					burgerbun = 1,
					burgertomato = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'burgerheartstopper',
				ingredients = {
					burgermeat = 2,
					burgerlettuce = 1,
					burgerbun = 1,
					burgertomato = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'burgertorpedo',
				ingredients = {
					burgermeat = 1,
					burgerbun = 1,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'burgermeatfree',
				ingredients = {
					burgerlettuce = 1,
					burgerbun = 1,
					burgertomato = 1,
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			-- Burger Crafting
			vec3(-1185.9948730469, -899.62396240234, 13.548998832703),
		},
		groups = {['burgershot'] = 0},
		zones = {
			{		-- Burger Crafting
				coords = vec3(-1185.9948730469, -899.62396240234, 13.548998832703),
				size = vec3(1, 1, 1),
				distance = 2,
				rotation = 70.0,
			},
		},
	},
	-- Burgershot Drinks Crafting
	{
		items = {
			{
				name = 'bscola',
				ingredients = {
					burgersodasyrup = 2,
				},
				duration = 5000,
				count = 1,
			},
			{
				name = 'bslemon',
				ingredients = {
					burgersodasyrup = 1,
				},
				duration = 2500,
				count = 1,
			},
			{
				name = 'burgermshake',
				ingredients = {
					mshakeformula = 2,
				},
				duration = 7500,
				count = 1,
			},
		},
		points = {
			-- Drinks Crafting
			vec3(-1191.3488769531, -898.02728271484, 14.071642875671),
		},
		groups = {['burgershot'] = 0},
		zones = {
			{		-- Drinks Crafting
				coords = vec3(-1191.3488769531, -898.02728271484, 14.071642875671),
				size = vec3(1, 1, 1),
				distance = 2,
				rotation = 70.0,
			},
		},
	},
	-- Burgershot Fries Crafting
	{
		items = {
			{
				name = 'burgerfries',
				ingredients = {
					burgerpotato = 1,
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			-- Fries Crafting
			vec3(-1188.1887207031, -901.13311767578, 13.69873046875),
		},
		groups = {['burgershot'] = 0},
		zones = {
			{		-- Fries Crafting
				coords = vec3(-1188.1887207031, -901.13311767578, 13.69873046875),
				size = vec3(1, 1, 1),
				distance = 2,
				rotation = 70.0,
			},
		},
	},
	-- Burgershot Raw Cooking
	{
		items = {
			{
				name = 'burgermeat',
				ingredients = {
					burgerraw = 1,
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			-- Raw Patty Cooking
			vec3(-1187.2214355469, -900.86828613281, 13.759497642517),
		},
		groups = {['burgershot'] = 0},
		zones = {
			{		-- Raw Patty Cooking
				coords = vec3(-1187.2214355469, -900.86828613281, 13.759497642517),
				size = vec3(1, 1, 1),
				distance = 2,
				rotation = 70.0,
			},
		},
	},
	-- Burgershot Box Crafting
	{
		items = {
			{
				name = 'burgermurdermeal',
				ingredients = {
					box = 1,
				},
				duration = 10000,
				count = 1,
			},
		},
		points = {
			-- Box Crafting
			vec3(-1187.5473632813, -897.19274902344, 14.119976997375),
		},
		groups = {['burgershot'] = 0},
		zones = {
			{		-- Box Crafting
				coords = vec3(-1187.5473632813, -897.19274902344, 14.119976997375),
				size = vec3(1, 1., 1),
				distance = 2,
				rotation = 70.0,
			},
		},
	},
    ```