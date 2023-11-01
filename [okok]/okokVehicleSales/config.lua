Config, Locales = {}, {}

Config.Locale = 'en' -- en / pt (not yet) / es (not yet) / fr (not yet) / de (not yet)

Config.DevMode = true -- true = Can restart the script in game that everything works | false = You can't restart the script in game otherwise it stops working

Config.Debug = false -- true = Debug mode, it will show the debug messages on the console

Config.DebugZones = false -- true = Debug mode, it will show the zones created

Config.UseOkokNotify = false -- true = okokNotify | false = qb-notify (You can change the notification system on cl_utils.lua)

Config.UseOkokTextUI = false -- true = okokTextUI | false = qb-drawtext 

Config.UseOkokRequests = false -- true = okokRequests | false = Hire right away

Config.UseOkokBanking = false -- true = The transactions will be registered on okokBanking

Config.UseOkokChat = false -- true = When a auction starts the notification will be sent by okokChat, otherwise it will send a notification

Config.UseOkokContract = true -- true = The vehicle purchase / sell will be handled by okokContract

Config.RequireItem = false -- true = The player will need to have the item in order to open the contract

Config.ItemName = 'contract' -- Name of the item that will be required to open the contract

Config.BuyVehicleOutright = false -- true = The player will be able to purchase the vehicle outright | false = The player will have to contact one of the business employees in order to purchase it

Config.UseSameImageForVehicles = true -- true = The vehicle image will be the same

Config.PrioritizeCash = true -- If true, it will prioritize cash over bank money when you buy a vehicle

Config.Currency = '$' -- The currency used on the script

Config.CurrencyonLeft = false -- true = The currency symbol will be in the left side | false = On the right side on UI

Config.Key = 38 -- [E] Key to open the interaction, check here the keys ID: https://docs.fivem.net/docs/game-references/controls/#controls

Config.EventPrefix = "okokVehicleSales" -- This will change the prefix of the events name so if Config.EventPrefix = "example" the events will be "example:event"

Config.StateColumn = "state" -- The column name of the state on the database

Config.MaxDealershipsPerPlayer = 5 -- How many dealership a player can own

Config.MaxEmployeesPerDealership = 10 -- How many employees a dealership can have

Config.HireDistance = 3 -- How close a player needs to be to be in the hiring range

Config.VehicleDistance = 10 -- How close a vehicle need to be to be in the vehicle range

Config.SellBusinessReceivePercentage = 50 -- How much % a player will receive for selling his business (in percentage, 50 = 50%)

Config.ShowOwnerBlip = true -- Activate/Deactivate owner blips

Config.ShowBuyShopBlip = true -- Activate/Deactivate buy store blip

Config.UseRoadNamesToShop = true -- true = The shop will be named after the road name

Config.SubOwnerRank = 4 -- ID of the rank that will work as a secondary owner ( check the Config.Ranks )

Config.SalesHistoryLimit = 25 -- Records for each shop that will be saved on the sale history table

Config.SalesDateFormat = "%d/%m - %H:%M" -- The Date that will be shown on Sales History

Config.Ranks = {  -- These are the ranks available on the shops, you can add or remove as many as you want but leave at least 1
	{ rank = 1, label = "Apprentice"      },
	{ rank = 2, label = "Experienced" },
	{ rank = 3, label = "Car Seller"      },
	{ rank = 4, label = "Director"   },
}

Config.AuctionsTimes = { -- Auction times to select
	{ ['h'] = 72 },
	{ ['h'] = 48 },
	{ ['h'] = 24 },
	{ ['h'] = 12 },
	{ ['h'] = 6  },
	{ ['h'] = 3  },
	{ ['h'] = 1  },
	{ ['m'] = 30 },
}

Config.Stores = { 
    {
		name = "Black Showroom", -- Name of the dealership
		currency = "bank", -- Used to buy/sell the business
		coords = vector3(1224.85, 2728.06, 38.0), -- Marker/Shop position for clients
		ownerCoords = vector3(1224.85, 2728.06, 38.0), -- Marker/Shop position for owner/employees
		zone = { -- Polyzone where the shop is at ( the last value of the vector3 needs to be the SAME )
			vector3(1259.34, 2695.45, 38.0),
			vector3(1241.63, 2692.67, 38.0),
			vector3(1213.79, 2691.89, 38.0),
			vector3(1202.85, 2691.54, 38.0),
			vector3(1203.41, 2728.71, 38.0),
			vector3(1208.48, 2728.04, 38.0),
			vector3(1211.19, 2732.36, 38.0),
			vector3(1210.72, 2747.03, 38.0),
			vector3(1237.43, 2747.06, 38.0),
			vector3(1237.54, 2727.18, 38.0),
			vector3(1240.53, 2723.45, 38.0),
			vector3(1244.26, 2722.60, 38.0),
			vector3(1252.13, 2721.06, 38.0),
			vector3(1253.26, 2715.91, 38.0),
			vector3(1253.08, 2705.82, 38.0),
		},
		radius = 1, -- Interaction radius for the markers
		price = 10000000, -- Price of the Shop
		blip = { blipId = 523, blipColor = 3, blipScale = 0.8, blipText = "Vehicle Sales" }, -- Blip informations for dealership blip
		ownerBlip = { blipId = 523, blipColor = 2, blipScale = 0.8, blipText = "Store Panel" }, -- Blip informations for dealership you own
		buyBlip = { blipId = 523, blipColor = 1, blipScale = 0.8, blipText = "Purchasable Store" }, -- Blip informations for dealership on sale
		ownerMarker = { id = 21, color = { r = 31, g = 94, b = 255, a = 90 }, size = { x = 0.5, y = 0.5, z = 0.5 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 }, -- Marker informations for the owning menu
		id = "dealership1", -- ID of the shop, it's used to get what shop is opened | needs to be DIFFERENT for each dealership
	}
}

-------------------------- DISCORD LOGS

Config.BotName = 'ServerName' -- Write the desired bot name

Config.ServerName = 'Black Diamond Roleplay' -- Write your server's name

Config.IconURL = '' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html


Config.BuyBusinessWebhook = true
Config.BuyBusinessWebhookColor = '65280'

Config.SellBusinessWebhook = true
Config.SellBusinessWebhookColor = '16711680'

Config.DepositWebhook = true
Config.DepositWebhookColor = '65280'

Config.WithdrawWebhook = true
Config.WithdrawWebhookColor = '16711680'

Config.HireWebhook = true
Config.HireWebhookColor = '65280'

Config.FireWebhook = true
Config.FireWebhookColor = '16711680'

Config.FireYourselfWebhook = true
Config.FireYourselfWebhookColor = '16711680'

Config.EditEmployeeRankWebhook = true
Config.EditEmployeeRankWebhookColor = '65280'


-------------------------- LOCALES (DON'T TOUCH)
	
function _okok(id)
	if Locales[Config.Locale][id] then
		return Locales[Config.Locale][id]
	else
		print("The locale '"..id.."' doesn't exist!")
	end
end