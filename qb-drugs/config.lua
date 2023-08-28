Config = Config or {}
Config.MinimumDrugSalePolice = 2

Config.Products = {
    [1] = {
        name = "weed_white-widow",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 1,
        minrep = 0,
    },
    [2] = {
        name = "weed_skunk",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 2,
        minrep = 20,
    },
    [3] = {
        name = "weed_purple-haze",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 3,
        minrep = 40,
    },
    [4] = {
        name = "weed_og-kush",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 4,
        minrep = 60,
    },
    [5] = {
        name = "weed_amnesia",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 5,
        minrep = 80,
    },
    [6] = {
        name = "weed_white-widow_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 6,
        minrep = 100,
    },
    [7] = {
        name = "weed_skunk_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 7,
        minrep = 120,
    },
    [8] = {
        name = "weed_purple-haze_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 8,
        minrep = 140,
    },
    [9] = {
        name = "weed_og-kush_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 9,
        minrep = 160,
    },
    [10] = {
        name = "weed_amnesia_seed",
        price = 15,
        amount = 150,
        info = {},
        type = "item",
        slot = 10,
        minrep = 180,
    },

}

Config.Dealers = {}

Config.CornerSellingDrugsList = {
    "weed_white-widow",
    "weed_skunk",
    "weed_purple-haze",
    "weed_og-kush",
    "weed_amnesia",
    "weed_ak47",
    "crack_baggy",
    "cokebaggy",
    "meth",
    "spicebaggy",
    "coke",
    "marijuana",
    "heroin",
    "lsd",
    "lsa"
}

Config.DrugsPrice = {
    ["weed_white-widow"] = {
        min = 150,
        max = 240,
    },
    ["weed_og-kush"] = {
        min = 150,
        max = 280,
    },
    ["weed_skunk"] = {
        min = 150,
        max = 310,
    },
    ["weed_amnesia"] = {
        min = 180,
        max = 340,
    },
    ["weed_purple-haze"] = {
        min = 180,
        max = 370,
    },
    ["weed_ak47"] = {
        min = 180,
        max = 400,
    },
    ["crack_baggy"] = {
        min = 180,
        max = 340,
    },
    ["cokebaggy"] = {
        min = 180,
        max = 370,
    },
    ["meth"] = {
        min = 500,
        max = 1500,
    },

    ["spicebaggy"] = {
        min = 850,
        max = 1350,
    },
    ["coke"] = {
        min = 1500,
        max = 2800,
    },
    ["marijuana"] = {
        min = 1000,
        max = 1100,
    },
    ["heroin"] = {
        min = 1200,
        max = 3400,
    },
    ["lsd"] = {
        min = 4500,
        max = 7500,
    },
    ["lsa"] = {
        min = 180,
        max = 400,
    },
}

Config.DeliveryLocations = {
    [1] = {
        ["label"] = "Stripclub",
        ["coords"] = vector3(106.24, -1280.32, 29.24),
    },
    [2] = {
        ["label"] = "Vinewood Video",
	["coords"] = vector3(223.98, 121.53, 102.76),
    },
    [3] = {
        ["label"] = "Taxi",
	["coords"] = vector3(882.67, -160.26, 77.11),
    },
    [4] = {
        ["label"] = "Resort",
	["coords"] = vector3(-1245.63, 376.21, 75.34),
    },
    [5] = {
        ["label"] = "Bahama Mamas",
	["coords"] = vector3(-1383.1, -639.99, 28.67),
    },
    [6] = {
        ["label"] = "BackDoor",
        ["coords"] = vector3(-1989.71, -330.53, 32.1),
    },
}

Config.CornerSellingZones = {
    [1] = {
	["coords"] = vector3(-1415.53, -1041.51, 4.62),
        ["time"] = {
            ["min"] = 12,
            ["max"] = 18,
        },
    },
}

Config.DeliveryItems = {
    [1] = {
        ["item"] = "weed_brick",
        ["minrep"] = 0,
    },
    [2] = {
        ["item"] = "lsd",
        ["minrep"] = 0,
    },
    [1] = {
        ["item"] = "coke",
        ["minrep"] = 0,
    },
}