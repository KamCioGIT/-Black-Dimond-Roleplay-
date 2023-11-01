Config = {}

Config.Vehicles = {
    "primo2",
    "premier"
}

Config.Locations = {
    ["ScrapVehicle"] = vector4(2349.67, 3134.18, 48.21, 79.1),
    CarSpawn = {
        {name = "Buccanew Way", coords = vector4(1140.17, -3189.57, 5.9, 9.47)},
        {name = "Dry Doc Street", coords = vector4(857.32, -2257.59, 30.35, 82.84)},
    }
}

Config.Ped = vector4(-211.27, 6574.12, 7.54, 40.88) -- - Coordinates of the ped to get the list from
Config.ExchangePed = vector4(2330.93, 3051.72, 48.15, 273.92) -- Coordinates of the ped to exchange parts

Config.Items = {
    ["door"] = "door",
    ["hood"] = "hood",
    ["trunk"] = "trunk",
    ["wheels"] = "wheels",
}

Config.Luck = math.random(1,100)
Config.LuckItems = {
    "lockpick",
}
