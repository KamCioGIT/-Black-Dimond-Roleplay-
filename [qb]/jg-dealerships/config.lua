Config = {}

Config.Locale = "en"
Config.NumberAndDateFormat = "en-GB"
Config.Currency = "GBP"
Config.SpeedUnit = "mph"
Config.Logging = false

Config.Framework = "QBCore"  -- or "ESX"
Config.FuelSystem = "none" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "none"
Config.VehicleKeys = "none" -- or "qb-vehiclekeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "none"
Config.Notifications = "default" -- or "okokNotify", "ox_lib", "ps-ui"

Config.DrawText = "jg-textui" -- or "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"
Config.OpenShowroomPrompt = "[E] Open Showroom"
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = "[E] View in Showroom"
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = "[E] Dealership Management"
Config.OpenManagementKeyBind = 38

Config.EnableFinance = true
Config.FinancePayments = 12
Config.FinanceDownPayment = 0.1 -- 0.1 means 10%
Config.FinanceInterest = 0.1 -- 0.1 means 10%
Config.FinancePaymentInterval = 12 -- in hours
Config.FinancePaymentFailedHoursUntilRepo = 0.1 -- in hours
Config.MaxFinancedVehiclesPerPlayer = 5

Config.TestDrivePlate = "TESTER"
Config.TestDriveTimeSeconds = 120

Config.DisplayVehiclesPlate = "DEALER"
Config.DealerPurchasePrice = 0.8 -- 0.8 = Dealers pay 80% of vehicle price
Config.VehicleOrderTime = 1 -- in mins

Config.Categories = {
  planes = "Planes",
  sportsclassics = "Sports Classics",
  sedans = "Sedans",
  compacts = "Compacts",
  motorcycles = "Motorcycles",
  super = "Super",
  offroad = "Offroad",
  helicopters = "Helicopters",
  coupes = "Coupes",
  muscle = "Muscle",
  boats = "Boats",
  vans = "Vans",
  sports = "Sports",
  suvs = "SUVs",
  commercial = "Commercial",
  cycles = "Cycles",
  industrial = "Industrial"
}

Config.DealershipLocations = {
  ["pdm"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-55.99, -1096.59, 26.42),
    openManagement = vector3(-30.43, -1106.84, 26.42),
    purchaseSpawn = vector4(-13.68, -1092.31, 26.67, 159.82),
    testDriveSpawn = vector4(-49.77, -1110.83, 26.44, 75.94),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs"},
    enableTestDrive = true,
    blip = {
      id = 326,
      color = 2,
      scale = 0.6
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["luxury"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-1257.4, -369.12, 36.98),
    openManagement = vector3(-1249.04, -346.96, 37.34),
    purchaseSpawn = vector4(-1233.46, -346.81, 37.33, 23.36),
    testDriveSpawn = vector4(-1233.46, -346.81, 37.33, 23.36),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sportsclassics", "super", "sports"},
    enableTestDrive = true,
    blip = {
      id = 523,
      color = 2,
      scale = 0.6
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["boats"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-739.55, -1333.75, 1.6),
    openManagement = vector3(-731.37, -1310.35, 5.0),
    purchaseSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    testDriveSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    camera = {
      name = "Sea",
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"boats"},
    enableTestDrive = false,
    blip = {
      id = 410,
      color = 2,
      scale = 0.6
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["air"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(-1623.0, -3151.56, 13.99),
    openManagement = vector3(-1637.78, -3177.94, 13.99),
    purchaseSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    testDriveSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    camera = {
      name = "Air",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {12.0, 15.0, 20.0, 15.0}
    },
    categories = {"planes", "helicopters"},
    enableTestDrive = false,
    blip = {
      id = 423,
      color = 2,
      scale = 0.6
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  ["truck"] = {
    type = "self-service", -- or "owned", "self-service"
    openShowroom = vector3(1214.37, -3204.53, 6.03),
    openManagement = vector3(1184.45, -3179.27, 7.1),
    purchaseSpawn = vector4(1196.75, -3205.31, 6.0, 91.12),
    testDriveSpawn = vector4(1196.75, -3205.31, 6.0, 91.12),
    camera = {
      name = "Truck",
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {7.5, 12.0, 15.0, 12.0}
    },
    categories = {"vans", "commercial", "industrial"},
    enableTestDrive = true,
    blip = {
      id = 477,
      color = 2,
      scale = 0.6
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
}

-- Discord Webhooks
Config.WebhookTestDrive = ""
Config.WebhookPurchase = ""
Config.WebhookFinance = ""
Config.WebhookDealership = ""
Config.WebhookAdmin = ""