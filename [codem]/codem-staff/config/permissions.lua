

Config.OwnerPermission = { -- only owner can use this permission
    -- ['ZXS20889'] = true,
    ['license:a045ed84bc7b147ab67442c4be4c70a4bb7d0ad5'] = true, --  licenseid   -- example
    ['license:2996dceb4c8a498d74b6a5d6e76a1ddb646546d7'] = true, --  licenseid   -- example
    ['EEJ82272'] = true, --  citizenid   -- example
    --['RUJ16865'] = true, --  citizenid   
   --if you don't know enter the game and type myidentifier in f8
}


Config.Permissions = {
    ['user'] = {
        rank = 0,
        label = "user",
        name = "user",
    },
    ['vip'] = {
        rank = 1,
        label = "Vip",
        name = "vip",
    }, -- vip is only designed to display the scoreboard. It does not have any admin function.
    ['staff'] = {
        rank = 2,
        label = "Staff",
        name = "staff",
    },
    ['admin'] = {
        rank = 3,
        label = "Admin",
        name = "admin",
    },
    ['superadmin'] = {
        rank = 4,
        label = "Super Admin",
        name = "superadmin",
    },
    ['owner'] = {
        rank = 5,
        label = "Owner",
        name = "owner",
    },
}


Config.playerPermission = {

    ['staffChat'] =  false,
    ['warnPlayer'] =  false,
    ['kickPlayer'] =  false,
    ['jailPlayer'] =  false,
    ['banPlayer'] =  false,
    ['permaBanPlayer'] =  false,
    ['spectatePlayer'] =  false,
    ['revivePlayer'] =  false,
    ['killPlayer'] = false,
    ['freezePlayer'] = false,
    ['gotoPlayer'] = false,
    ['bringPlayer'] = false,
    ['giveVip'] = false,
   
    ['markGps'] = false,
    ['giveItem'] = false,
    ['clearVehicle'] = false,
    ['allRevive'] = false,
    ['clearArea'] = false,
    ['changeWeather'] = false,
    ['changeTime'] = false,
    ['giveCash'] = false,
    ['giveBank'] = false,
    ['devtools'] = false,
    ['noclip'] = false,
    ['godmode'] = false,
    ['healPlayer'] = false,
    ['invisible'] = false,
    
    ['showPlayerName'] = false,
    ['sendPM'] = false,
    ['giveVehicle'] = false,
    ['giveVehicleDatabase'] = false,
    ['unbanPlayer'] = false,
    ['announce'] = false,
    ['showcoords'] = false,
    ['giveClothingMenu'] = false,
    ['takePicture'] = false,
    ['clearInventory'] = false,
    ['setJob'] = false,
    ['freezeTime'] = false,
    ['runCommand'] = false,
    ['repairVehicle'] = false,
    ['unjailPlayer'] = false,
    ['tpmarker'] = false,
    ['givePerm'] = false,
    
    ['allPermission'] = false, --- dont thach this
}