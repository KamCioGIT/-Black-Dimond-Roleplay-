function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

local Allowrefuel = false
local AllowElectricRefuel = false

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw a Sprite on the center of a PolyZone to hint where it's located
Config.DrawSprite = false

-- The default distance to draw the Sprite
Config.DrawDistance = 10.0

-- The color of the sprite in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.DrawColor = {255, 255, 255, 255}

-- The color of the sprite in rgb when the PolyZone is targeted, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.SuccessDrawColor = {30, 144, 255, 255}

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha (opacity). Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {

    ['CQCMugshot'] = {
		name = 'CQCMugshot',
		coords = vector3(473.0, -1012.55, 26.27),
		debugPoly = false,
		length = 0.60,
		width = 0.65,
		heading = 0,
		minZ=25.27,
        maxZ=27.27,
		options = {
			{
                type = "client",
                event = "cqc-mugshot:client:takemugshot",
				icon = 'fas fa-camera',
				label = 'Take Suspects Mugshots',
                job = "police",
			},
		},
		distance = 2.0,
	},

 -----MoneyWash----
	["MoneyWashEnt"] = {
        name = "MoneyWashEnt",
        coords = vector3(218.24, -1851.31, 26.88),
        length = 0.4,
        width = 1.4,
        heading = 50,
        debugPoly = false,
        minZ=25.88,
        maxZ=28.08,
        options = {
          {
            type = "client",
            event = "MoneyWashEnt",
            icon = "fa-solid fa-door-open",
            label = "An unlocked door!",
          },
        },
        distance = 1.5
    },
    ["MoneyWashOut"] = {
        name = "MoneyWashOut",
        coords = vector3(1138.1, -3199.49, -39.67),
        length = 0.4,
        width = 1.2,
        heading = 359,
        debugPoly = false,
        minZ=-40.67,
        maxZ=-38.27,
        options = {
          {
            type = "client",
            event = "MoneyWashOut",
            icon = "fa-solid fa-door-open",
            label = "Go up?",
          },
        },
        distance = 1.5
    },

    ------------------------------------   MRPD

	["MRPDDuty"] = {
        name = "MRPDDuty",
        coords = vector3(441.82, -982.02, 30.69),
        length = 0.5,
        width = 0.5,
        heading = 15,
        debugPoly = false,
        minZ = 27.09,
        maxZ = 31.09,
        options = {
            {
                type = "client",
                event = "qb-policejob:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Go On/Off duty",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["DAVISDuty"] = {
        name = "DAVISDuty",
        coords = vector3(363.1, -1591.06, 29.29),
        length = 1,
        width = 1,
        heading = 325,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "qb-policejob:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Go On/Off duty",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["SANDYduty"] = {
        name = "SANDYduty",
        coords = vector3(1833.73, 3678.38, 34.19),
        length = 1,
        width = 1,
        heading = 325,
        debugPoly = false,
        minZ=30.39,
        maxZ=34.39,
        options = {
            {
                type = "client",
                event = "qb-policejob:ToggleDuty",
                icon = "fas fa-clipboard",
                label = "Go On/Off duty",
                job = "police",
            },
        },
        distance = 1.5
    },

	["MRPDPersonalstah"] = {
        name = "MRPDPersonalstah",
        coords = vector3(446.2, -996.93, 30.69),
        length = 2.5,
        width = 0.5,
        heading = 0,
        debugPoly = false,
        minZ = 27.69,
        maxZ = 31.69,
        options = {
            {
                type = "client",
                event = "qb-police:client:openStash",
                icon = "fas fa-box-open",
                label = "Personal Stash",
                job = "police",
            },
        },
        distance = 2.5
    },
    ["DAVISPersonalstah"] = {
        name = "DAVISPersonalstah",
        coords = vector3(362.85, -1607.74, 29.29),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "qb-police:client:openStash",
                icon = "fas fa-box-open",
                label = "Personal Stash",
                job = "police",
            },
        },
        distance = 2.5
    },
    ["SANDYersonalstah"] = {
        name = "SANDYersonalstah",
        coords = vector3(1841.87, 3681.79, 34.19),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=31.39,
        maxZ=35.39,
        options = {
            {
                type = "client",
                event = "qb-police:client:openStash",
                icon = "fas fa-box-open",
                label = "Personal Stash",
                job = "police",
            },
        },
        distance = 2.5
    },

    ["DAVISEvidance"] = {
        name = "DAVISEvidance",
        coords = vector3(380.49, -1598.96, 33.36),
        length = 1,
        width = 1,
        heading = 320,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "police:client:Evidence",
                icon = "fas fa-sync",
                label = "Evidence",
                job = "police",
            },
        },
        distance = 2.5
    },

    ["MRPDEvidance"] = {
        name = "MRPDEvidance",
        coords = vector3(449.08, -995.58, 30.69),
        length = 5,
        width = 0.5,
        heading = 270,
        debugPoly = false,
        minZ = 28.09,
        maxZ = 32.09,
        options = {
            {
                type = "client",
                event = "police:client:Evidence",
                icon = "fas fa-sync",
                label = "Evidence",
                job = "police",
            },
        },
        distance = 2.5
    },

    ["MRPDEvidance2"] = {
        name = "MRPDEvidance2",
        coords = vector3(474.08, -1004.66, 26.27),
        length = 4,
        width = 0.5,
        heading = 270,
        debugPoly = false,
        minZ = 23.27,
        maxZ = 27.27,
        options = {
            {
                type = "client",
                event = "police:client:Evidence2",
                icon = "fas fa-sync",
                label = "Evidence",
                job = "police",
            },
        },
        distance = 2.5
    },

    ["MRPDArmory"] = {
        name = "MRPDArmory",
        coords = vector3(481.52, -994.86, 30.69),
        length = 3,
        width = 0.5,
        heading = 270,
        debugPoly = false,
        minZ = 28.49,
        maxZ = 32.49,
        options = {
            {
                type = "client",
                event = "qb-police:client:openArmoury",
                icon = "fas fa-box",
                label = "Armory",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["DAVISArmory"] = {
        name = "DAVISArmory",
        coords = vector3(366.38, -1609.65, 29.29),
        length = 1,
        width = 1,
        heading = 320,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "qb-police:client:openArmoury",
                icon = "fas fa-box",
                label = "Armory",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["SANDYArmory"] = {
        name = "SANDYArmory",
        coords = vector3(1836.61, 3685.62, 34.19),
        length = 1,
        width = 1,
        heading = 320,
        debugPoly = false,
        minZ=31.99,
        maxZ=35.99,
        options = {
            {
                type = "client",
                event = "qb-police:client:openArmoury",
                icon = "fas fa-box",
                label = "Armory",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["MRPDtrashbin"] = {
        name = "MRPDtrashbin",
        coords = vector3(473.91, -995.37, 26.27),
        length = 5,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 24.07,
        maxZ = 28.07,
        options = {
            {
                type = "client",
                event = "qb-police:client:openTrash",
                icon = "fas fa-trash",
                label = "Trash Box",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["DAVIStrashbin"] = {
        name = "DAVIStrashbin",
        coords = vector3(364.01, -1608.85, 29.29),
        length = 1,
        width = 1,
        heading = 320,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "qb-police:client:openTrash",
                icon = "fas fa-trash",
                label = "Trash Box",
                job = "police",
            },
        },
        distance = 1.5
    },
    ["MRPDfingerprint"] = {
        name = "MRPDfingerprint",
        coords = vector3(483.65, -988.58, 30.69),
        length = 1,
        width = 0.5,
        heading = 270,
        debugPoly = false,
        minZ = 27.49,
        maxZ = 31.49,
        options = {
            {
                type = "client",
                event = "qb-police:client:scanFingerPrint",
                icon = "fas fa-fingerprint",
                label = "Finger Print",
            },
        },
        distance = 1.5
    },

    ["MRPDGarage_1"] = {
        name = "MRPDGarage_1",
        coords = vector3(441.32, -974.56, 25.7),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 22.5,
        maxZ = 26.5,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },

    ["MRPDGarage_2"] = {
        name = "MRPDGarage_2",
        coords = vector3(476.71, -1017.15, 27.98),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=26.98,
        maxZ=29.18,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },
    ["MRPDGarage_3"] = {
        name = "MRPDGarage_3",
        coords = vector3(393.31, -1633.17, 29.29),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=28.29,
        maxZ=32.29,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },
    ["SANDYGarage"] = {
        name = "SANDYGarage",
        coords = vector3(1863.0655517578, 3688.25390625, 33.974605560303),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ=30.97,
        maxZ=34.97,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },

    ["MRPDHeli"] = {
        name = "MRPDHeli",
        coords = vector3(463.94, -982.34, 43.69),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 40.69,
        maxZ = 44.69,
        options = {
            {
                type = "client",
                event = "Heligarage:MRPD",
                icon = "fas fa-helicopter",
                label = "Helicopter",
                job = "police",
            },
        },
        distance = 2.0
    },

    ["davispdheli"] = {
        name = "davispdheli",
        coords = vector3(378.34664916992, -1601.6862792969, 36.948665618896),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 33.75,
        maxZ = 37.75,
        options = {
            {
                type = "client",
                event = "Heligarage:MRPD",
                icon = "fas fa-helicopter",
                label = "Helicopter",
                job = "police",
            },
        },
        distance = 2.0
    },
    ["SANDYheli"] = {
        name = "SANDYheli",
        coords = vector3(1862.3001708984, 3703.7888183594, 33.974597930908),
        length = 1,
        width = 1,
        heading = 0,
        debugPoly = false,
        minZ = 30.97,
        maxZ = 34.97,
        options = {
            {
                type = "client",
                event = "Heligarage:MRPD",
                icon = "fas fa-helicopter",
                label = "Helicopter",
                job = "police",
            },
        },
        distance = 2.0
    },

    ["PoliceBoat_1"] = {
        name = "PoliceBoat_1",
        coords = vector3(-797.81, -1512.04, 1.6),
        length = 1,
        width = 1,
        heading = 20,
        debugPoly = false,
        minZ=0.6,
        maxZ=3.0,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD:Boat",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },
    ["PoliceBoat_2"] = {
        name = "PoliceBoat_2",
        coords = vector3(-1810.82, -1235.71, 8.62),
        length = 1,
        width = 1,
        heading = 50,
        debugPoly = false,
        minZ=7.62,
        maxZ=10.42,
        options = {
            {
                type = "client",
                event = "PDGARAGE:MRPD:Boat",
                icon = "fas fa-car",
                label = "Police Vehicle",
                job = "police",
            },
        },
        distance = 2.0
    },

    ["PillboxGarage"] = {
        name = "PillboxGarage",
        coords = vector3(340.91, -575.84, 28.8),
        length = 0.5,
        width = 0.5,
        heading = 78.6,
        debugPoly = false,
        minZ = 27.8,
        maxZ = 29.8,
        options = {
            {
                type = "client",
                event = "EMS:GARAGE",
                icon = "fas fa-car",
                label = "EMS Garage",
                job = "ambulance",
            },
        },
        distance = 2.5
    },
    ["PaletoHospitalG"] = {
        name = "PaletoHospitalG",
        coords = vector3(-258.03, 6353.08, 32.43),
        length = 1,
        width = 1,
        heading = 45,
        debugPoly = false,
        minZ=31.43,
        maxZ=33.43,
        options = {
            {
                type = "client",
                event = "EMS:GARAGE",
                icon = "fas fa-car",
                label = "EMS Garage",
                job = "ambulance",
            },
        },
        distance = 2.5
    },
}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetModels = {

}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
    options = {
        {
            type = 'client',
            event = 'qb-methcar:cook',
            icon = 'fas fa-blender',
            label = 'Lets cook!',
			canInteract = function(entity)
                if GetVehicleEngineHealth(entity) <= 0 then return false end
                	local model = GetEntityModel(entity)
					local modelName = GetDisplayNameFromVehicleModel(model)
					if modelName == 'JOURNEY' then
                    return true
                end
                return false
            end
        },
    },
    distance = 2.0,

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {

}

Config.Peds = {
    { --Pillbox
        model = `s_m_m_paramedic_01`,
        coords = vector4(340.91, -575.84, 28.8, 78.6),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },
    { -- Paleto Hospital
        model = `s_m_m_paramedic_01`,
        coords = vector4(-258.03, 6353.08, 32.43, 227.36),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },
    { --Burgershot
        model = `s_m_y_garbage`,
        coords = vector4(-1170.89, -900.45, 13.81, 37.15),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    },
   --[[  { --Atoms 
        model = `s_m_y_garbage`,
        coords = vector4(92.948944091797, 310.45874023438, 110.02416229248, 153.9506072998),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_CLIPBOARD'
    }, ]]
    { --MRPD Heli
        model = `ig_trafficwarden`,
        coords = vector4(463.88, -982.25, 43.69, 91.65),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --SANDY Heli
        model = `s_m_m_pilot_02`,
        coords = vector4(1862.2409667969, 3703.8005371094, 33.974609375, 123.10696411133),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --MRPD Bottom Garage
        model = `s_m_y_cop_01`,
        coords = vector4(441.37, -974.68, 25.7, 184.27),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --MRPD Bottom Garage
        model = `s_m_y_cop_01`,
        coords = vector4(393.31, -1633.17, 29.29, 56.57),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --SANDY Garage
        model = `s_m_y_cop_01`,
        coords = vector4(1863.0570068359, 3688.2749023438, 33.974636077881, 30.3929271698),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --MRPD Prison Area
        model = `s_m_y_cop_01`,
        coords = vector4(476.71, -1017.15, 27.98, 180.17),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --Police Dvpd
    model = `s_m_m_pilot_02`,
    coords = vector4(378.43646240234, -1601.7436523438, 36.948677062988, 50.558322906494),
    gender = 'male',
    freeze = true,
    invincible = true,
    blockevents = true,
    minusOne = true,
    scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --Police Boat 1
        model = `s_m_y_cop_01`,
        coords = vector4(-797.81, -1512.04, 1.6, 291.35),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
    { --Police Boat 2
        model = `s_m_y_cop_01`,
        coords = vector4(-1810.95, -1235.62, 8.62, 229.27),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
        minusOne = true,
        scenario = 'WORLD_HUMAN_GUARD_STAND'
    },
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function JobTypeCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

local function AllowRefuel(state, electric) 
    if state then
		if electric then
			AllowElectricRefuel = true
		else
        	Allowrefuel = true
		end
    else
		if electric then
			AllowElectricRefuel = false
		else
			Allowrefuel = false
		end
    end
end exports('AllowRefuel', AllowRefuel)

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		local timeout = 0
		while state ~= 'started' and timeout <= 100 do
			timeout += 1
			state = GetResourceState('qb-core')
			Wait(0)
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCheck = QBCore.Functions.HasItem

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

        JobTypeCheck = function(jobType)
			if type(jobType) == 'table' then
				jobType = jobType[PlayerData.job.type]
				if jobType then
					return true
				end
			elseif jobType == 'all' or jobType == PlayerData.job.type then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.excludejob and JobCheck(data.excludejob) then return false end
    if data.jobType and not JobTypeCheck(data.jobType) then return false end
	if data.excludejobType and JobTypeCheck(data.excludejobType) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.excludegang and GangCheck(data.excludegang) then return false end
	if data.item and not ItemCheck(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end
