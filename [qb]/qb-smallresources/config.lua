Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = true
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- carwash
Config.DirtLevel = 0.1 --carwash dirt level

--Food 




--Drinks





ConsumeablesEat = {
    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(20, 30),
    ["snikkel_candy"] = math.random(20, 30),
    ["burger-bleeder"] = math.random(35, 54),
    ["burger-moneyshot"] = math.random(35, 54),
    ["burger-torpedo"] = math.random(35, 54),
    ["burger-heartstopper"] = math.random(35, 54),
    ["burger-meatfree"] = math.random(35, 54),
    ["burger-fries"] = math.random(35, 54),
    ["taco"] = math.random(25, 34),
}

ConsumeablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["burger-softdrink"] = math.random(40, 50),
    ["burger-mshake"] = math.random(40, 50),
}

ConsumeablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
   -- [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
   -- [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    --[`deluxo`] = true,
    [`lguard`] = true,
    [`ambulance`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },

    -- Weapon LAB
    [3] = {
        [1] = {
            coords = vector4(-82.89, -1398.9, 29.49, 188.1),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Weapon Lab'
        },
        [2] = {
            coords = vector4(902.86, -3182.35, -97.06, 87.63),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave Weapon Lab'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [6] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}

Config.Blips = {

    --[[--LSD
        ['blip_chemicalfield'] = {
            ["label"] = "LSD Chemical Field",
            ["blip_sprite"] = 268,
            ["blip_color"] = 6,
            ["coords"] = vector3(23.11, 3653.2, 38.85)
        },
        ['blip_chemicalprocessing'] = {
            ["label"] = "LSD Chemical Process",
            ["blip_sprite"] = 268,
            ["blip_color"] = 6,
            ["coords"] = vector3(1172.62, -2973.59, 6.06)
        },
        ['blip_drugdealer'] = {
            ["label"] = "LSD Dealer",
            ["blip_sprite"] = 268,
            ["blip_color"] = 6,
            ["coords"] = vector3(-106.42, -8.73, 66.80)
        },
    -- Cocain run
        ['blip_cocainerun'] = {
                ["label"] = "Cocaine Run",
                ["blip_sprite"] = 51,
                ["blip_color"] = 38,
                ["coords"] = vector3(2122.3, 4784.8, 40.97)
        },
        ['blip_cokedealer'] = {
                ["label"] = "Coke Dealer",
                ["blip_sprite"] = 382,
                ["blip_color"] = 47,
                ["coords"] = vector3(449.27, -899.65, 28.6)
        },
    -- spice
        ['blip_spicepick'] = {
                ["label"] = "Spice Field",
                ["blip_sprite"] = 469,
                ["blip_color"] = 28,
                ["coords"] = vector3(2977.85, 3969.06, 56.05)
        },
        ['blip_processspice'] = {
                ["label"] = "Process Spice",
                ["blip_sprite"] = 677,
                ["blip_color"] = 28,
                ["coords"] = vector3(2466.72, 3784.53, 40.99)
        },
        ['blip_spicedealer'] = {
                ["label"] = "Spice Dealer",
                ["blip_sprite"] = 382,
                ["blip_color"] = 47,
                ["coords"] = vector3(-158.87, -965.54, 21.28)
        },
        -- Traphouse
        ['blip_traphouse'] = {
                ["label"] = "Traphouse",
                ["blip_sprite"] = 497,
                ["blip_color"] = 66,
                ["coords"] = vector3(-1202.11, -1308.68, 4.92)
        },
        -- Meth lab
        ['blip_methlab'] = {
                ["label"] = "Meth Lab",
                ["blip_sprite"] = 499,
                ["blip_color"] = 3,
                ["coords"] = vector3(927.36, -1560.37, 30.94)
        },
        -- Money Wash lab
        ['blip_methlab'] = {
                ["label"] = "Money Wash",
                ["blip_sprite"] = 500,
                ["blip_color"] = 1,
                ["coords"] = vector3(614.65, 2784.34, 43.49)
        },]]--
        -- Billiard
        ['blip_playbilliard'] = {
                ["label"] = "Play Billiard",
                ["blip_sprite"] = 509,
                ["blip_color"] = 0,
                ["coords"] = vector3(1990.83, 3047.54, 47.22)
        },
        
        
        -- Diamond Casino
        ['blip_burgershot'] = {
            ["label"] = "Diamond Casino",
            ["blip_sprite"] = 679,
            ["blip_color"] = 0,
            ["coords"] = vector3(907.69, 40.46, 80.69)
        },
        -- Real Estate HQ
        ['blip_paradiseclub'] = {
            ["label"] = "Real Estate Agency",
            ["blip_sprite"] = 40,
            ["blip_color"] = 25,
            ["coords"] = vector3(-709.32, 268.21, 83.15)
        },
        -- Bumper Carts
        ['blip_bumpercarts'] = {
            ["label"] = "Bumper Carts Zone",
            ["blip_sprite"] = 380,
            ["blip_color"] = 46,
            ["coords"] = vector3(-1722.86, -1124.58, 14.11)
        },
        
    }
