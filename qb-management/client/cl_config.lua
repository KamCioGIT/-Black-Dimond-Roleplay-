-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(441.46, -975.0, 35.06),
    },
    ['ambulance'] = {
        vector3(310.71, -569.7, 43.27),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vector3(894.96, -179.07, 74.7),
    },
    ['cardealer'] = {
        vector3(-27.47, -1107.13, 27.27),
    },
    ['mechanic'] = {
        vector3(-346.63, -130.78, 42.04),
    },
    ['burgershot'] = {
        vector3(-1200.38, -902.98, 13.89),
    },
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(441.46, -975.0, 35.06), length = 1.35, width = 1.45, heading = 0, minZ = 34.06, maxZ = 38.06 },    },
    ['ambulance'] = {
        { coords = vector3(310.71, -569.7, 43.27), length = 1.2, width = 0.6, heading = 335, minZ = 42.27, maxZ = 46.27 },
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(894.96, -179.07, 74.7), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-27.47, -1107.13, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-346.63, -130.78, 42.04), length = 1.15, width = 2.6, heading = 340, minZ = 41.04, maxZ = 45.04 },
    },
    ['burgershot'] = {
        { coords = vector3(-1200.38, -902.98, 13.89), length = 1.15, width = 2.6, heading = 305, minZ = 12.89, maxZ = 16.89 },
    },
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(0, 0, 0),
    },
    ['ballas'] = {
        vector3(0, 0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },
}

Config.GangMenuZones = {
    --[[
    ['gangname'] = {
        { coords = vector3(0.0, 0.0, 0.0), length = 0.0, width = 0.0, heading = 0.0, minZ = 0.0, maxZ = 0.0 },
    },
    ]]
}
