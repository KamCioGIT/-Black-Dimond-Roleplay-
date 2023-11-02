Config = {}

Config.Locale = "en"
Config.NumberAndDateFormat = "en-US"
Config.Currency = "USD"
Config.SpeedUnit = "kmh"
Config.Logging = false

Config.Framework = "QBCore"  -- or "ESX"
Config.FuelSystem = "cdn-fuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "none"
Config.Notifications = "ox_lib" -- or "okokNotify", "ox_lib", "ps-ui"

Config.DrawText = "ox_lib" -- or "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"
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
Config.TestDriveTimeSeconds = 61

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
  industrial = "Industrial",
  customcars = "customcars"
}

Config.DealershipLocations = {
  ["pdm"] = {
    type = "owned", -- or "owned", "self-service"
    openShowroom = vector3(-32.89, -1097.37, 27.27),
    openManagement = vector3(-25.624, -1104.613, 27.274),
    purchaseSpawn = vector4(-13.05, -1092.52, 27.08, 154.54),
    testDriveSpawn = vector4(-13.05, -1092.52, 27.08, 154.54) ,
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"sedans", "compacts", "motorcycles", "offroad", "coupes", "muscle", "suvs", "sportsclassics", "super", "sports", "vans", "cycles"},
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
    type = "owned", -- or "owned", "self-service"
    openShowroom = vector3(-1247.5, -359.45, 36.96),
    openManagement = vector3(-1232.09, -346.23, 37.33),
    purchaseSpawn = vector4(-1236.72, -332.09, 37.32, 30.41),
    testDriveSpawn = vector4(-1236.72, -332.09, 37.32, 30.41),
    camera = {
      name = "Car",
      coords = vector4(-146.6166, -596.6301, 166.0000, 120.0),
      positions = {5.0, 8.0, 12.0, 8.0}
    },
    categories = {"customcars"},
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
Config.WebhookTestDrive = "https://discord.com/api/webhooks/1161682926304501761/uLdxr4uDJPZgK4qkbEfjHJDwetbLbXOpfNWBPZVbUBUH_jO-OnNWFLWlkfYfNc7W1DxX"
Config.WebhookPurchase = "https://discord.com/api/webhooks/1161682997788037120/3VezIuP0c6idBb56VohEESyjE5VxuGlw8XM03S3Gaf8sjMpXtlzmDcCkFAwJgX93YJ2i"
Config.WebhookFinance = "https://discord.com/api/webhooks/1161683060232826920/qBkCR2bZu9k0NUa54UY6MovpDwzvdI4RynyTDz0eKx9JYM8pI9nIpURy4Ko_Bzi7EH2b"
Config.WebhookDealership = "https://discord.com/api/webhooks/1161683121033457674/EkdMzOuqjnTPqX7IVhwz_jC15OXXMAwNdgjMM9YamZaJNEcP_ZAdBebm-rEdQi4U99n6"
Config.WebhookAdmin = "https://discord.com/api/webhooks/1161683182022819840/QGS7U_P-gwFm-dNLxLkYYtWx-MqsPy-ZxEPsozfL2HCovjov8kpieopMTK5khCJQ_-fR"