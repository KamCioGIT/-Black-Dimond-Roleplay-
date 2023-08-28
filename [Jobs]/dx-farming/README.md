## IN-RP FEATURES
- Using Tractors to Mow the Farm / Field
- Dynamic Growth of Crops after Water Supply is on!
- Cow Farm with Lots of Cows that wander around the farm.
- Milk the Cows, collect Milk and Pack it to Sell it.
- Integrated Orange Farm to collect Oranges and Pack them to Sell them!
- Selling System - PawnShop Inspired

## SCRIPT FEATURES
- Highly Customizable (You can customize literally everyting using the config.)
- Blips for all Interactable Locations 
- Unique MLO for Bradlock Farm 
- Unique Items for the Script itself with Images. 

## SETUP
1. Add these items to your `shared.lua` file. 
```
	["corn_kernel"] 		         = {["name"] = "corn_kernel", 			        ["label"] = "Cone Kernel", 	            ["weight"] = 300, 		["type"] = "item", 		["image"] = "corn_kernel.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn kernel"},
	["corn_packet"] 		         = {["name"] = "corn_packet", 			        ["label"] = "Cone Packet", 	            ["weight"] = 500, 		["type"] = "item", 		["image"] = "corn_packet.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Corn Packet"},
	["orange"] 		                 = {["name"] = "orange", 			            ["label"] = "Orange", 	                ["weight"] = 100, 		["type"] = "item", 		["image"] = "orange.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Orange"},
	["fruit_pack"] 		             = {["name"] = "fruit_pack", 			        ["label"] = "Fruit Pack", 	            ["weight"] = 300, 		["type"] = "item", 		["image"] = "fruit_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Fruit Pack"},
	["milk"] 		                 = {["name"] = "milk", 			                ["label"] = "Milk", 	                ["weight"] = 200, 		["type"] = "item", 		["image"] = "milk.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk"},
	["milk_pack"] 		             = {["name"] = "milk_pack", 			        ["label"] = "Milk Pack", 	            ["weight"] = 500, 		["type"] = "item", 		["image"] = "milk_pack.png", 	        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Milk pack"},
	["box"] 		                 = {["name"] = "box", 			                ["label"] = "Box", 	                	["weight"] = 100, 		["type"] = "item", 		["image"] = "box.png", 	            ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "box"},
```
Then navigate to your Inventory. Add Images provided in `images` folder to the Inventory. 

2. Add the Script to your resources.cfg 
3. Start your Server Again. 