Config = {}
Translation = {}

Translation = {
    ['de'] = {
        ['DJ_interact'] = 'Drücke ~g~E~s~, um auf das DJ Pult zuzugreifen',
        ['title_does_not_exist'] = '~r~Dieser Titel existiert nicht!',
    },

    ['en'] = {
        ['DJ_interact'] = 'Press ~g~E~s~, to access the DJ desk',
        ['title_does_not_exist'] = '~r~This title does not exist!',
    }
}

Config.Locale = 'en'

Config.useESX = false -- can not be disabled without changing the callbacks
Config.enableCommand = false

Config.enableMarker = true -- purple marker at the DJ stations

Config.DJPositions = {
    {
        name = 'Vanilla',
        pos = vector3(117.1, -1281.45, 29.26),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },

    {
        name = 'Bahama',
        pos = vector3(-1378.73, -629.1, 30.63),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },
{
        name = 'cayo',
        pos = vector3(4893.18, -4904.88, 3.49),
        requiredJob = nil, -- example: requiredJob = "dj" 
        range = 25.0, 
        volume = 1.0 --[[ do not touch the volume! --]]
    },
    
	
	
}