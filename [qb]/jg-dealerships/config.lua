-- Generated with https://configurator.jgscripts.com at 8/9/2023, 7:44:11 PM

Config = {}
Config.Locale = 'en'
Config.NumberAndDateFormat = 'it'
Config.Currency = 'USD'
Config.SpeedUnit = 'kph'
Config.Logging = false
Config.Framework = 'QBCore'
Config.FuelSystem = 'cdn-fuel'
Config.VehicleKeys = 'qb-vehiclekeys'
Config.Notifications = 'default'
Config.DrawText = 'jg-textui'
Config.OpenShowroomPrompt = '[E] Open Showroom'
Config.OpenShowroomKeyBind = 38
Config.ViewInShowroomPrompt = '[E] View in Showroom'
Config.ViewInShowroomKeyBind = 38
Config.OpenManagementPrompt = '[E] Dealership Management'
Config.OpenManagementKeyBind = 38
Config.EnableFinance = true
Config.FinancePayments = 12
Config.FinanceDownPayment = 0.1
Config.FinanceInterest = 0.1
Config.FinancePaymentInterval = 12
Config.FinancePaymentFailedHoursUntilRepo = 1
Config.MaxFinancedVehiclesPerPlayer = 5
Config.DisplayVehiclesPlate = 'DEALER'
Config.DealerPurchasePrice = 0.8
Config.VehicleOrderTime = 1
Config.TestDrivePlate = 'TESTER'
Config.TestDriveTimeSeconds = 120
Config.Categories = {
  planes = 'Planes',
  sportsclassics = 'Sports Classics',
  sedans = 'Sedans',
  compacts = 'Compacts',
  motorcycles = 'Motorcycles',
  super = 'Super',
  offroad = 'Offroad',
  helicopters = 'Helicopters',
  coupes = 'Coupes',
  muscle = 'Muscle',
  boats = 'Boats',
  vans = 'Vans',
  sports = 'Sports',
  suvs = 'SUVs',
  commercial = 'Commercial',
  cycles = 'Cycles',
  industrial = 'Industrial',
  customcars = 'Customcars',
}
Config.DealershipLocations = {
  pdm = {
    type = 'owned',
    showroomType = 'car',
    openShowroom = vector3(-37.58, -1088.06, 26.44),
    openManagement = vector3(-33.27, -1116.86, 26.44),
    purchaseSpawn = vector4(-47.41, -1081.12, 26.74, 58.54),
    testDriveSpawn = vector4(-47.41, -1081.12, 26.74, 58.54),
    camera = {
      name = 'Car',
      coords = vector4(471.2, -1996.61, 3.97, 324.23),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sedans',
      'compacts',
      'motorcycles',
      'offroad',
      'coupes',
      'muscle',
      'suvs',
      'customcars',
    },
    enableTestDrive = true,
    blip = {
      id = 326,
      color = 1,
      scale = 0.6,
    },
    societyPurchaseJobWhitelist = {
      police = {
        4,
        5,
      },
    },
    societyPurchaseGangWhitelist = {},
  },
  luxury = {
    type = 'owned',
    showroomType = 'car',
    openShowroom = vector3(-1248.08, -359.7, 36.96),
    openManagement = vector3(-1232.64, -342.03, 37.33),
    purchaseSpawn = vector4(-1238.53, -331.73, 37.28, 24.5),
    testDriveSpawn = vector4(-1238.53, -331.73, 37.28, 24.5),
    camera = {
      name = 'Car',
      coords = vector4(471.2, -1996.61, 3.97, 324.23),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'sportsclassics',
      'super',
      'sports',
      'customcars',
    },
    enableTestDrive = true,
    blip = {
      id = 523,
      color = 1,
      scale = 0.6,
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  boats = {
    type = 'owned',
    showroomType = 'car',
    openShowroom = vector3(-739.55, -1333.75, 1.6),
    openManagement = vector3(-731.37, -1310.35, 5.0),
    purchaseSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    testDriveSpawn = vector4(-714.42, -1340.01, -0.18, 139.38),
    camera = {
      name = 'Sea',
      coords = vector4(-808.28, -1491.19, -0.47, 113.53),
      positions = {
        5,
        8,
        12,
        8,
      },
    },
    categories = {
      'boats',
    },
    enableTestDrive = false,
    blip = {
      id = 410,
      color = 1,
      scale = 0.6,
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
  air = {
    type = 'owned',
    showroomType = 'car',
    openShowroom = vector3(-1623.0, -3151.56, 13.99),
    openManagement = vector3(-1637.78, -3177.94, 13.99),
    purchaseSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    testDriveSpawn = vector4(-1654.9, -3147.58, 13.99, 324.78),
    camera = {
      name = 'Air',
      coords = vector4(-1267.0, -3013.14, -48.5, 310.96),
      positions = {
        12,
        15,
        20,
        15,
      },
    },
    categories = {
      'planes',
      'helicopters',
    },
    enableTestDrive = false,
    blip = {
      id = 423,
      color = 1,
      scale = 0.6,
    },
    societyPurchaseJobWhitelist = {},
    societyPurchaseGangWhitelist = {},
  },
}
Config.Configurator__AllWebhooksSame = true
Config.WebhookTestDrive = ''
Config.WebhookPurchase = ''
Config.WebhookFinance = ''
Config.WebhookDealership = ''
Config.WebhookAdmin = ''
