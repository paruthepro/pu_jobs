# Items and crafting are handled by ox_inventory (A requirement for this job or write your own crafting system into the script, up to you!)
## [Recommended MLO](https://fivem.gabzv.com/package/4724795)

## Items (Add these to your items.lua ox_inventory ONLY)
```lua
-- Food
['tiramisu'] = {label = 'Tiramisu', weight = 500, stack = true, close = false, description = "Italians are not real."},
['pizzaicecream'] = {label = 'Icecream', weight = 250, stack = true, close = false, description = "So creamy"},
['pizzadough'] = {label = 'Pizza Dough', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['pizzasauce'] = {label = 'Tomato Sauce', weight = 100, degrade = 5760, stack = true, close = true, description = "An Ingredient"},
['pizzacheese'] = {label = 'Mozzarella Cheese' ,weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['pizzabasil'] = {label = 'Basil', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['pizzapepperoni'] = {label = 'Pepperoni', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['pizzasausage'] = {label = 'Sausage', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['pizzabacon'] = {label = 'Bacon Bits', weight = 100, degrade = 4320, stack = true, close = true, description = "An Ingredient"},
['pizzaveggies'] = {label = 'Assorted Vegetables', weight = 2500, degrade = 10080, stack = true, close = true, description = "An Ingredient"},
['pizzaosoda'] = {label = 'Offbrand Soda', weight = 1000, degrade = 4320, stack = true, close = true, description = "Have you heard of this brand before?" },
['pizzasalad'] = {label = 'Weird Salad', weight = 2000, degrade = 4320, stack = false, close = false, consume = 0, description = "Im on a diet"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["cheesepizza"] = {label = "Cheese Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "For the basic bitches"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["neopolitanpizza"] = {label = "Neopolitan Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "Napoleon was Italian?"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["pepperonipizza"] = {label = "Pepperoni Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "I dont have a joke for this one"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["meatloverspizza"] = {label = "Meatlovers Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "For those who love meat in their mouths"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["supremepizza"] = {label = "Supreme Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "All the toppings"  client = {status = {hunger = 200000}, anim = 'eating', prop = 'cookie', usetime = 2500, }},
["nothingpizza"] = {label = "The Nothing Pizza", weight = 125, degrade = 4840, stack = true, close = true, description = "Pizza but with nothing"},

-- Drink
['pizzawine1'] = {label = 'Red Wine', weight = 2000, degrade = 4320, stack = false, close = false, consume = 0, description = "Im on a diet" client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},
["pizzawine2"] = {label = "White Wine", weight = 125, degrade = 4840, stack = true, close = true, description = "For the basic bitches" client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},
["pizzabeer1"] = {label = "Logger Beer", weight = 125, degrade = 4840, stack = true, close = true, description = "Manly Men" client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},
["pizzabeer2"] = {label = "Dusche Beer", weight = 125, degrade = 4840, stack = true, close = true, description = "Femboy" client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},
["pizzabeer3"] = {label = "Pisswasser Stout", weight = 125, degrade = 4840, stack = true, close = true, description = "Liberal" client = {status = {thirst = 400000}, anim = {dict = 'mp_player_intdrink', clip = 'loop_bottle'}, usetime = 2500, cancel = true}},


```
## Crafting - Add these to ox_inventory/data/crafting.lua
```lua
-- Pizza Oven
	{
		items = {
	        {name = 'cheesepizza', ingredients = {pizzadough = 1, pizzasauce = 2, pizzacheese = 3}, duration = 5000, count = 1}, 
	        {name = 'neopolitanpizza', ingredients = {pizzadough = 1, pizzasauce = 2, pizzacheese = 3, pizzabasil = 5}, duration = 5000, count = 1},
			{name = 'pepperonipizza', ingredients = {pizzadough = 1, pizzasauce = 2, pizzacheese = 3, pizzapepperoni = 15}, duration = 5000, count = 1},
			{name = 'meatloverspizza', ingredients = {pizzadough = 1, pizzasauce = 2, pizzacheese = 3, pizzapepperoni = 15, pizzasausage = 15}, duration = 5000, count = 1},
			{name = 'supremempizza', ingredients = {pizzadough = 1, pizzasauce = 2, pizzacheese = 3, pizzapepperoni = 15, pizzasausage = 15, pizzaveggies = 15}, duration = 5000, count = 1},
			{name = 'nothingpizza', ingredients = {pizzadough = 1}, duration = 5000, count = 1}},
		points = {vec3(813.3165, -752.8980, 26.7808, 255.1712)},
		groups = {['pizzathis'] = 0},
		zones = {{ coords = vec3(813.2467, -752.9171, 26.7808), size = vec3(1, 2, 1), distance = 2, rotation = 270.0}}},
```
## Shop - Add to ox_inventory/data/shops.lua
```lua
-- Pizza This Shop
PizzaThis = {
	name = 'Pizza This! Freezer',
	groups = {['pizzathis'] = 0},
	inventory = {
		{name = 'pizzadough', price = 0},
		{name = 'pizzasauce', price = 0},
		{name = 'pizzacheese', price = 0},
		{name = 'pizzabasil', price = 0},
		{name = 'pizzapepperoni', price = 0},
		{name = 'pizzasausage', price = 0},
		{name = 'pizzabacon', price = 0},
		{name = 'pizzaveggies', price = 0},
		{name = 'pizzasalad', price = 0},
	}, locations = {vec3(802.3239, -757.3510, 26.7809)},
	targets = {{loc = vec3(802.3239, -757.3510, 26.780), length = 2.5, width = 3.0, heading = 3.0, minZ = 24.5, maxZ = 28.0, distance = 6}}
},
PizzaThisAlcohol = {
	name = 'Pizza This! Alcohol Cabinet',
	groups = {['pizzathis'] = 0},
	inventory = {
		{name = 'pizzawine1', price = 0},
		{name = 'pizzawine2', price = 0},
		{name = 'pizzabeer1', price = 0},
		{name = 'pizzabeer2', price = 0},
		{name = 'pizzabeer3', price = 0},
	}, locations = {
		vec3(813.5019, -749.4304, 26.7808)
	}, targets = {{loc = vec3(813.5019, -749.4304, 26.7808), length = 2.5, width = 3.0, heading = 270.0, minZ = 24.5, maxZ = 28.0, distance = 6}}
},
```
  
