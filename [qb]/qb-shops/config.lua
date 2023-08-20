Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.SellCasinoChips = {
    coords = vector4(950.37, 3400.72, 7001.87, 3300.82),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}

Config.Products = {

    ["applestore"] = {
        
        [0] = {
            name = "phone",
            price = 850,
            amount = 50,
            info = {},
            type = "item",
            slot = 0,
        },
        
        
        [2] = {
            name = "radio",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "boombox",
            price = 1500,
            amount = 150,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "fitbit",
            price = 400,
            amount = 150,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "dslrcamera",
            price = 5000,
            amount = 75,
            info = {},
            type = "item",
            slot = 6,
        },
    },

    ["mkey"] = {
        [1] = {
            name = 'mwkey',
            price = 15000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 1,
            --requiresLicense = true
        },
    [2] = {
            name = 'cocainekey',
            price = 15000,
            amount = 5,
            info = {},
            type = 'item',
            slot = 2,
            --requiresLicense = true
        },
        
    },

    ["vehdealer"] = {
        [1] = {
            name = 'contract',
            price = 50,
            amount = 1000,
            info = {},
            type = 'item',
            slot = 1,
            --requiresLicense = true
        },
        [2] = {
            name = 'water_bottle',
            price = 10,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 2,
            --requiresLicense = true
        },
    },
   --[[  ["casino"] = {
        [1] = {
            name = 'casinochips',
            price = 1,
            amount = 10000000,
            info = {},
            type = 'item',
            slot = 1,
            --requiresLicense = true
        },
        [2] = {
            name = 'casino_ticket',
            price = 5000,
            amount = 5000,
            info = {},
            type = 'item',
            slot = 2,
            --requiresLicense = true
        },
    }, ]]
    ["huntingshop"] = {
        [1] = {
            name = 'huntingbait',
            price = 50,
            amount = 150,
            info = {},
            type = 'item',
            slot = 1
        },
        [2] = {
            name = 'weapon_knife',
            price = 50,
            amount = 50,
            info = {},
            type = 'item',
            slot = 2
        },
        [3] = {
            name = 'weapon_musket',
            price = 5000,
            amount = 10,
            info = {},
            type = 'item',
            slot = 3
        }
    },
    ["normal"] = {
        [1] = {
            name = "tosti",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "twerks_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "snikkel_candy",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "sandwich",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "beer",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "whiskey",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "vodka",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "bandage",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "lighter",
            price = 2,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "rolling_paper",
            price = 2,
            amount = 5000,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "stickynotepad",
            price = 10,
            amount = 5000,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "mala_roupas",
            price = 350,
            amount = 500,
            info = {},
            type = "item",
            slot = 14,
        },
    },

    ["blkmrk"] = {
        [1] = {
            name = "security_card_01",
            price = 20000,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "greenchip",
            price = 10000,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_assaultrifle",
            price = 70000,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapon_heavyshotgun",
            price = 68000,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapon_assaultsmg",
            price = 86000,
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
        },
    },

    ["liquor"] = {
        [1] = {
            name = "beer",
            price = 7,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "whiskey",
            price = 10,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "vodka",
            price = 12,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
    },
    ["hardware"] = {
        [1] = {
            name = "lockpick",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_wrench",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hammer",
            price = 250,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "repairkit",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
            --requiredJob = {}
        },
        [5] = {
            name = "screwdriverset",
            price = 350,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        
        [6] = {
            name = "firework1",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "firework2",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "firework3",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "firework4",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        
        [10] = {
            name = "cleaningkit",
            price = 150,
            amount = 150,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "advancedrepairkit",
            price = 500,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
            requiredJob = { "mechanic", "police" }
        },
        
        
        [12] = {
            name = "spray",
            price = 150,
            amount = 150,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "spray_remover",
            price = 750,
            amount = 150,
            info = {},
            type = "item",
            slot = 13,
        },
        
        [14] = {
            name = "head_bag",
            price = 120,
            amount = 750,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "jerrycan_combustivel",
            price = 300,
            amount = 75,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "mangueira_combustivel",
            price = 100,
            amount = 75,
            info = {},
            type = "item",
            slot = 16,
        },
    },
    ["weedshop"] = {
        [1] = {
            name = "joint",
            price = 10,
            amount = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_poolcue",
            price = 100,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weed_nutrition",
            price = 20,
            amount = 1000,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "empty_weed_bag",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "rolling_paper",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "finescale",
            price = 50,
            amount = 1000,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "bakingsoda",
            price = 20,
            amount = 1000,
            info = {},
            type = "item",
            slot = 7,
        },
        
        [8] = {
            name = "trimming_scissors",
            price = 20,
            amount = 100,
            info = {},
            type = "item",
            slot = 8,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "jerry_can",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },

        [4] = {
            name = "fishrod",
            price = 150,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "fishingbait",
            price = 25,
            amount = 10,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "skateboard",
            price = 750,
            amount = 150,
            info = {},
            type = "item",
            slot = 6,
        },
        -- [4] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_bat",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hatchet",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
            requiredJob = { "mechanic", "police" }
        },
        [4] = {
            name = "weapon_pistol",
            price = 3500,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
            requiresLicense = true
        },
        [5] = {
            name = "weapon_snspistol",
            price = 1500,
            amount = 5,
            info = {},
            type = "item",
            slot = 5,
            --requiresLicense = true
        },
        [6] = {
            name = "weapon_vintagepistol",
            price = 2500,
            amount = 15,
            info = {},
            type = "item",
            slot = 6,
            requiresLicense = true
        },
        [7] = {
            name = "pistol_ammo",
            price = 500,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
            --requiresLicense = true
        },
        [8] = {
            name = "weapon_sawnoffshotgun",
            price = 10000,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
            requiresLicense = true
        },
        [9] = {
            name = "shotgun_ammo",
            price = 800,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
            requiresLicense = true
        },
        [10] = {
            name = "weapon_golfclub",
            price = 800,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
            requiresLicense = true
        },

    },

    --[[[1] = {
        name = "weapon_knife",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "weapon_bat",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "weapon_hatchet",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 3
    },
    [4] = {
        name = "weapon_pistol",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 4,
        --requiresLicense = true
    },
    [5] = {
        name = "weapon_snspistol",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 5,
        --requiresLicense = true
    },
    [6] = {
        name = "weapon_vintagepistol",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 6,
        --requiresLicense = true
    },
    [7] = {
        name = "weapon_revolver",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 7,
        --requiresLicense = true
    },
    [8] = {
        name = "weapon_appistol",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 8,
        --requiresLicense = true
    },
    [9] = {
        name = "pistol_ammo",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 9,
        --requiresLicense = true
    },
    [10] = {
        name = "weapon_microsmg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 10,
        --requiresLicense = true
    },
    [11] = {
        name = "weapon_smg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 11,
        --requiresLicense = true
    },
    [12] = {
        name = "weapon_assaultsmg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 12,
        --requiresLicense = true
    },
    [13] = {
        name = "weapon_combatpdw",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 13,
        --requiresLicense = true
    },
    [14] = {
        name = "weapon_machinepistol",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 14,
        --requiresLicense = true
    },
    [15] = {
        name = "weapon_minismg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 15,
        --requiresLicense = true
    },
    [16] = {
        name = "smg_ammo",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 16,
        --requiresLicense = true
    },
    [17] = {
        name = "weapon_pumpshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 17,
        --requiresLicense = true
    },
    [18] = {
        name = "weapon_sawnoffshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 18,
        --requiresLicense = true
    },
    [19] = {
        name = "weapon_assaultshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 19,
        --requiresLicense = true
    },
    [20] = {
        name = "weapon_bullpupshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 20,
        --requiresLicense = true
    },
    [21] = {
        name = "weapon_heavyshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 21,
        --requiresLicense = true
    },
    [22] = {
        name = "weapon_dbshotgun",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 22,
        --requiresLicense = true
    },
    [23] = {
        name = "shotgun_ammo",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 23,
        --requiresLicense = true
    },
    [24] = {
        name = "weapon_assaultrifle",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 24,
        --requiresLicense = true
    },
    [25] = {
        name = "weapon_carbinerifle",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 25,
        --requiresLicense = true
    },
    [26] = {
        name = "weapon_specialcarbine",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 26,
        --requiresLicense = true
    },
    [27] = {
        name = "weapon_compactrifle",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 27,
        --requiresLicense = true
    },
    [28] = {
        name = "rifle_ammo",
        price = 25,
        amount = 5000,
        info = {},
        type = "item",
        slot = 28,
        --requiresLicense = true
    },
    [29] = {
        name = "weapon_mg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 29,
        --requiresLicense = true
    },
    [30] = {
        name = "weapon_combatmg",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 30,
        --requiresLicense = true
    },
    [31] = {
        name = "mg_ammo",
        price = 25,
        amount = 5000,
        info = {},
        type = "item",
        slot = 31,
        --requiresLicense = true
    },
    [32] = {
        name = "weapon_sniperrifle",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 32,
        --requiresLicense = true
    },
    [33] = {
        name = "weapon_heavysniper",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 33,
        --requiresLicense = true
    },
    [34] = {
        name = "weapon_marksmanrifle",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 34,
        --requiresLicense = true
    },
    [35] = {
        name = "snp_ammo",
        price = 25,
        amount = 500,
        info = {},
        type = "item",
        slot = 35,
        --requiresLicense = true
    },
    [36] = {
        name = "weapon_grenade",
        price = 2500,
        amount = 20,
        info = {},
        type = "item",
        slot = 36,
        --requiresLicense = true
    },
    [37] = {
        name = "weapon_molotov",
        price = 2500,
        amount = 20,
        info = {},
        type = "item",
        slot = 37,
        --requiresLicense = true
    },
    [38] = {
        name = "weapon_stickybomb",
        price = 2500,
        amount = 20,
        info = {},
        type = "item",
        slot = 38,
        --requiresLicense = true
    },]]
    
}


Config.Locations = {

["vehdealer"] = {
        ["label"] = "Car Dealership",
        --["type"] = "weapon",
        ["coords"] = vector4(-781.77, -211.4, 37.15, 118.27),
        ["ped"] = 'u_m_m_jewelsec_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Dealership Shop",
        ["products"] = Config.Products["vehdealer"],
        ["showblip"] = false,
        ["blipsprite"] = 626,
        ["blipcolor"] = 1
    },
    
["applestore"] = {
        ["label"] = "Ifruit Store",
        --["type"] = "weapon",
        ["coords"] = vector4(149.0, -234.58, 54.42, 342.69),
        ["ped"] = 'u_f_y_jewelass_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Ifruit Store",
        ["products"] = Config.Products["applestore"],
        ["showblip"] = true,
        ["blipsprite"] = 606,
        ["blipcolor"] = 44
    },
    ["huntingshop"] = {
        ["label"] = "Hunting Shop",
        ["type"] = "weapon",
        ["coords"] = vector4(-679.54, 5839.11, 17.33, 228.05),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Hunting Shop",
        ["products"] = Config.Products["huntingshop"],
        ["showblip"] = true,
        ["blipsprite"] = 626,
        ["blipcolor"] = 1
    },
    -- 24/7 Locations

    ["247supermarket0"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(161.3, 6642.36, 31.71, 223.26),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(24.47, -1346.62, 29.5, 271.66),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },
["blkmrk"] = {
        ["label"] = "Back Door Market",
        ["coords"] = vector4(981.51, -1574.66, 30.97, 180.48),
        ["ped"] = 'u_m_m_streetart_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Browse Black Market",
        ["products"] = Config.Products["blkmrk"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["mkey"] = {
        ["label"] = "Keys For Hidden Labs",
        ["coords"] = vector4(-674.7, -879.1, 24.45, 96.4),
        ["ped"] = 'u_m_m_streetart_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Key Market",
        ["products"] = Config.Products["mkey"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },
    --[[ ["247supermarket1"] = {
        ["label"] = "24/7 Legion Square Supermarket",
        ["coords"] = vector4(188.86, -888.94, 29.71, 247.03),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 2,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    }, ]]

    ["247supermarket2"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3039.54, 584.38, 7.91, 17.27),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket3"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(-3242.97, 1000.01, 12.83, 357.57),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket4"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1728.07, 6415.63, 35.04, 242.95),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket5"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(1959.82, 3740.48, 32.34, 301.57),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket6"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(549.13, 2670.85, 42.16, 99.39),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket7"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2677.47, 3279.76, 55.24, 335.08),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket8"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(2556.66, 380.84, 108.62, 356.67),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["247supermarket9"] = {
        ["label"] = "24/7 Supermarket",
        ["coords"] = vector4(372.66, 326.98, 103.57, 253.73),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-47.02, -1758.23, 29.42, 45.05),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["ltdgasoline2"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-706.06, -913.97, 19.22, 88.04),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["ltdgasoline3"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(-1820.02, 794.03, 138.09, 135.45),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["ltdgasoline4"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(1164.71, -322.94, 69.21, 101.72),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["ltdgasoline5"] = {
        ["label"] = "LTD Gasoline",
        ["coords"] = vector4(1697.87, 4922.96, 42.06, 324.71),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["normal"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["robsliquor2"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["robsliquor3"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["robsliquor4"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    ["robsliquor5"] = {
        ["label"] = "Rob's Liqour",
        ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
        ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Open Shop",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(45.68, -1749.04, 29.61, 53.13),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipcolor"] = 0
    },

    ["hardware2"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(2747.71, 3472.85, 55.67, 255.08),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Open Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipcolor"] = 0
    },

    ["hardware3"] = {
        ["label"] = "Hardware Store",
        ["coords"] = vector4(-421.83, 6136.13, 31.88, 228.2),
        ["ped"] = 'mp_m_waremech_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Hardware Store",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipcolor"] = 0
    },

    -- Ammunation Locations
    ["ammunation"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-661.96, -933.53, 21.83, 177.05),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation2"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(809.68, -2159.13, 29.62, 1.43),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation3"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(1692.67, 3761.38, 34.71, 227.65),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation4"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-331.23, 6085.37, 31.45, 228.02),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation5"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(253.63, -51.02, 69.94, 72.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation6"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(23.0, -1105.67, 29.8, 162.91),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation7"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(2567.48, 292.59, 108.73, 349.68),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation8"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1118.59, 2700.05, 18.55, 221.89),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation9"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(841.92, -1035.32, 28.19, 1.56),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation10"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-1304.19, -395.12, 36.7, 75.03),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },
    ["ammunation11"] = {
        ["label"] = "Ammunation",
        ["type"] = "weapon",
        ["coords"] = vector4(-3173.31, 1088.85, 20.84, 244.18),
        ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Open Ammunation",
        ["products"] = Config.Products["weapons"],
        ["showblip"] = true,
        ["blipsprite"] = 110,
        ["blipcolor"] = 0
    },

    -- Casino Locations
   --[[  ["casino"] = {
        ["label"] = "Diamond Casino",
        ["coords"] = vector4(1117.49, 219.17, -49.44, 119.66),
        ["ped"] = 'csb_tomcasino',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-coins",
        ["targetLabel"] = "Buy Chips",
        ["products"] = Config.Products["casino"],
        ["showblip"] = false,
        ["blipsprite"] = 617,
        ["blipcolor"] = 0
    },

    ["casinobar"] = {
        ["label"] = "Casino Bar",
        ["coords"] = vector4(937.45, 27.22, 71.83, 61.21),
        ["ped"] = 'a_m_y_smartcaspat_01',
        ["scenario"] = "WORLD_HUMAN_VALET",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-wine-bottle",
        ["targetLabel"] = "Open Casino Bar",
        ["products"] = Config.Products["liquor"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    }, ]]

    -- Weedshop Locations
    ["weedshop"] = {
        ["label"] = "Smoke On The Water",
        ["coords"] = vector4(-1171.31, -1570.89, 4.66, 130.03),
        ["ped"] = 'a_m_y_hippy_01',
        ["scenario"] = "WORLD_HUMAN_AA_SMOKE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-cannabis",
        ["targetLabel"] = "Open Weed Shop",
        ["products"] = Config.Products["weedshop"],
        ["showblip"] = true,
        ["blipsprite"] = 140,
        ["blipcolor"] = 0
    },

    -- Sea Word Locations
    ["seaword"] = {
        ["label"] = "Sea Word",
        ["coords"] = vector4(-1687.03, -1072.18, 13.15, 52.93),
        ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-fish",
        ["targetLabel"] = "Sea Word",
        ["products"] = Config.Products["gearshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },

    -- Leisure Shop Locations
    ["leisureshop"] = {
        ["label"] = "Leisure Shop",
        ["coords"] = vector4(-1505.91, 1511.95, 115.29, 257.13),
        ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-leaf",
        ["targetLabel"] = "Open Leisure Shop",
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipcolor"] = 0
    },
}
