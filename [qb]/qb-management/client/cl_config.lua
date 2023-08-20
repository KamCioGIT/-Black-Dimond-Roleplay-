-- Zones for Menues
Config = Config or {}
print("sda")
Config.UseTarget =false

Config.BossMenus = {
    ['police'] = {
        vector3(462.32, -985.21, 30.73),
    },
    ['ambulance'] = {
        vector3(341.09, -589.93, 43.28),
    },
    ['realestate'] = {
        vector3(-716.82, 259.88, 84.14),
    },
    ['taxi'] = {
        vector3(907.24, -150.19, 74.17),
    },
    ['cardealer'] = {
        vector3(-810.01, -208.61, 37.13),
    },
    ['mechanic'] = {
        vector3(-338.7, -157.76, 44.59),
    },
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(462.32, -985.21, 30.73), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 } ,
    },
    ['ambulance'] = {
        { coords = vector3(341.09, -589.93, 43.28), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vector3(-716.82, 259.88, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-810.01, -208.61, 37.13), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-338.7, -157.76, 44.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(989.44, -135.98, 74.06),
    },
    ['ballas'] = {
        vector3(113.94, -1965.46, 21.33),
    },
    ['vagos'] = {
        vector3(352.99, -2032.61, 25.59),
    },
    ['mafia'] = {
        vector3(-1528.65, 150.45, 60.8),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(1403.8, 1144.67, 114.34),
    },
}

Config.GangMenuZones = {
    --[[
    ['gangname'] = {
        { coords = vector3(0.0, 0.0, 0.0), length = 0.0, width = 0.0, heading = 0.0, minZ = 0.0, maxZ = 0.0 },
    },
    ]]
}
