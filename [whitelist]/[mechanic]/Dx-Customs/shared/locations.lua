--[[
   

Vehicle Classes:
0: Compacts     1: Sedans       2: SUVs         3: Coupes       4: Muscle       5: Sports Classics
6: Sports       7: Super        8: Motorcycles  9: Off-road     10: Industrial  11: Utility
12: Vans        13: Cycles      14: Boats       15: Helicopters 16: Planes      17: Service
18: Emergency   19: Military    20: Commercial  21: Trains
 ]]

 Config = Config or {}

 Config.Locations = {
--[[ 
    ['Innocence'] = {
        settings = {
            label = 'Bennys Motorworks', -- Text label for anything that wants it
            welcomeLabel = "Welcome to Benny's Motorworks!", -- Welcome label in the UI
            enabled = true, -- If the location can be used at all
        },
        blip = {
            label = 'Goverment Mechanic Workshop',
            coords = vector3(-212.15, -1325.63, 30.91),
            sprite = 72,
            scale = 0.65,
            color = 0,
            display = 4,
            enabled = true,
        },
        categories = { -- Only include the categories you want. A category not listed defaults to FALSE.
            mods = true, -- Performance Mods
            repair = true,
            armor = true,
            respray = true,
            liveries = true,
            wheels = true,
            tint = true,
            plate = true,
            extras = true,
            neons = true,
            xenons = true,
            horn = true,
            turbo = true,
            cosmetics = true, -- Cosmetic Mods
        },
        drawtextui = {
            text = "Bennys Motorworks",
        },
        restrictions = { -- A person must pass ALL the restriction checks. Remove an item below to automatically pass that check.
            job = { 'mechanic', 'mechanicls' }, -- Allowed job. Can be an array of strings for multiple jobs. Any for all jobs
            gang = "any", -- Allowed gang. Can be an array of strings for multiple gangs. Any for all gangs
            allowedClasses = {}, -- Array of allowed classes. Empty will allow any but denied classes.
            deniedClasses = {}, -- Array of denied classes.
        },
        zones = {
            { coords = vector3(-212.15, -1325.63, 30.91), length = 6.0, width = 4.0, heading = 333.61, minZ = 29.88, maxZ = 33.48 },
            { coords = vector3(-212.15, -1325.63, 30.91), length = 6.0, width = 4.4, heading = 333.61, minZ = 29.88, maxZ = 33.48 },
        }
    }, ]]
    --[[  ['MRPD'] = {
         settings = {
             label = 'MRPD Motorworks',
             welcomeLabel = "Welcome to MRPD Motorworks!",
             enabled = true,
         },
         categories = {
             repair = true,
             respray = true,
             liveries = true,
             tint = true,
             extras = true,
             plate = true,
             cosmetics = true,
             mods = true,
             armor = true,
             turbo = true,
         },
         drawtextui = {
             text = "MRPD Motorworks",
         },
         restrictions = {
             job = { 'police', 'bcso', 'sasp' },
             allowedClasses = { 18 },
         },
         zones = {
             { coords = vector3(450.09, -975.92, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
             { coords = vector3(435.53, -975.97, 25.7), length = 9.0, width = 4.0, heading = 90.0, minZ = 24.5, maxZ = 28.5 },
         }
     },
 
     ['Pillbox'] = {
         settings = {
             label = 'Pillbox Motorworks',
             welcomeLabel = "Welcome to Pillbox Motorworks!",
             enabled = true,
         },
         categories = {
             repair = true,
             respray = true,
             liveries = true,
             tint = true,
             extras = true,
             plate = true,
             cosmetics = true,
         },
         drawtextui = {
             text = "Pillbox Motorworks"
         },
         restrictions = {
             job = { 'ambulance' },
             allowedClasses = { 18 },
         },
         zones = {
             { coords = vector3(337.2, -579.6, 28.8), length = 9.4, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
             { coords = vector3(340.38, -570.8, 28.8), length = 8.8, width = 4.2, heading = 340.0, minZ = 27.5, maxZ = 31.5 },
         }
     }, ]]
 }