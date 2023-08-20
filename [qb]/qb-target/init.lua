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
   --[[  ["boxzone1"] = {
        name = "casinoroulette",
        coords = vector3(1146.37, 261.16, -51.54),
        length = 1.5,
        width = 2.5,
        heading = 260.67,
        debugPoly = false,
        minZ = -52.04,
		maxZ = -50.75,
        options = {
            {
              type = "client",
              event = "dx-roulette:start",
              icon = "fas fa-coins",
              label = "Play Roulette",
			  targeticon = 'fas fa-coins', 
            },
        },
        distance = 2.5
    }, ]]
	["atmnt"] = {
        name = "wepatmntcraft",
        coords = vector3(320.17, 2883.77, 46.38),
        length = 1.0,
        width = 0.5,
        heading = 215,
        debugPoly = false,
        minZ = 46.13,
		maxZ = 46.93,
        options = {
            {
              type = "client",
              event = "inventory:client:WeaponAttachmentCrafting",
              icon = "fas fa-wrench",
              label = "Weapon Attachment Crafting",
			  targeticon = 'fas fa-wrench', 
            },
        },
        distance = 2.5
    },

	["guncraft"] = {
        name = "guncraft",
        coords = vector3(905.95, -3231.45, -98.29),
        length = 1.0,
        width = 1.0,
        heading = 0,
        debugPoly = false,
        minZ=-98.89,
  		maxZ=-97.84,
        options = {
            {
                type = "client",
                event = "mt-crafting:client:AbrirMenuCraft",
                icon = "fas fa-table", 
                label = "Craft Things",
            },
        },
        distance = 2.5
    },

	["mrpdduty"] = {
        name = "mrpduty",
        coords = vector3(441.7989, -982.0529, 30.67834),
        length = 0.45,
        width = 0.35,
        heading = 11,
        debugPoly = false,
        minZ = 30.77834,
		maxZ = 30.87834,
        options = {
			{
				type = "client",
				event = "qb-policejob:ToggleDuty",
				icon = "fas fa-sign-in-alt",
				label = "Sign In",
				job = "police",
			},
		},
        distance = 2.5
    },

    ["emsduty"] = {
        name = "emsduty",
        coords = vector3(311.75, -593.4, 43.28),
        length = 1.0,
        width = 1.0,
        heading = 340,
        debugPoly = false,
        minZ=42.88,
        maxZ=43.88,
        options = {
			{
				        type = "client",
                        event = "EMSToggle:Duty",
                        icon = "fa fa-clipboard",
                        label = "Sign In/Off duty",
                        job = "ambulance",
			},
		},
        distance = 1.5
    },

    ["emschecking"] = {
        name = "emschecking",
        coords = vector3(307.58, -595.38, 43.28),
        length = 1.0,
        width = 1.0,
        heading = 340,
        debugPoly = false,
        minZ=42.88,
        maxZ=43.68,
        options = {
			{
				        type = "client",
                        event = "qb-ambulancejob:checkin",
                        icon = "fa fa-clipboard",
                        label = "Checking",
                        --job = "ambulance",
			},
		},
        distance = 2.0
    },
}
	

Config.PolyZones = {

}

Config.TargetBones = {
	["mechanic"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
            --[[{
                type = "client",
                event = "craft:vehmenu",
                icon = "fad fa-key",
                label = "Vehicle Menu",
                job = "mechanic",
            },]]--
            {
                type = "client",
                event = "police:client:PutPlayerInVehicle",
                icon = "fas fa-chevron-circle-left",
                label = "PLACE IN VEHICLE",
            },
            {
                type = "client",
                event = "police:client:SetPlayerOutVehicle",
                icon = "fas fa-chevron-circle-right",
                label = "TAKE OUT OF VEHICLE",
            },
            {
                type = "client",
                event = "police:client:ImpoundVehicle",
                icon = "fas fa-car",
                label = "IMPOUND VEHICLE",
                job = 'police'
            },
        },
        distance = 3.0
    },
    
}


Config.TargetEntities = {

}

Config.TargetModels = {

    ["Clothing-OpenOutFit"] = {
        models = {
            "a_m_y_smartcaspat_01"
        },
        options = {
            {
                type = "client",
                event = "qb-clothingopen",
                label = "Buy Clothes",
            },
			{
                type = "client",
                event = "qb-clothing:client:openOutfitMenu",
                label = "Saved Clothes",
            },
        },
        distance = 2.5,
    },

	["Clothing-OpenOutFit2"] = {
        models = {
            "mp_m_g_vagfun_01"
        },
        options = {
            {
                type = "client",
                event = "qb-barberopen",
                label = "Barber Menu",
            },
        },
        distance = 2.5,
    },




    ["dumpsters_1"] = {
        models = {
            -1096777189,
            666561306,
            1437508529,
            -1426008804,
            -228596739,
            161465839,
            651101403,
                -58485588,
                218085040,
                -206690185,
        
                },
        options = {
            {
                event = "qb-dumpster:client:dumpsterdive",
                icon = "fas fa-dumpster",
                label = "Check Dumpster",
            },
        },
        distance = 2.0,
    },
	
    ["crafting"] = {
        models = {
            "prop_toolchest_05",
    		"prop_tool_bench02_ld",
    		"prop_tool_bench02",
    		"prop_toolchest_02",
    		"prop_toolchest_03",
    		"prop_toolchest_03_l2",
    		"prop_toolchest_05",
    		"prop_toolchest_04",
        },
        options = {
            {
                event = "inventory:client:Crafting",
                icon = "fas fa-wrench",
                label = "Item Crafting", 
            },
        },
        distance = 1.5,
    },

    ["tacogarage"] = {
		models = {
			"a_f_y_hipster_02"
		},
		options = {
			{
				type = "client",
				event = "garage:TacoGarage",
				icon = "fas fa-car",
				label = "Taco Garage",
				job = "taco",
			}
		},
	distance = 2.5,
	},

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
                if GetVehicleEngineHealth(entity) <= 1000 then return false end
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
    options = {
        {
            type = "client",
            event = "qs-smartphone:client:GiveContactDetails",
            icon = "fas fa-address-book",
            label = "Give Contact Details",
        },
        {
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Rob Player",
        },
        {
            type = "client",
            event = "police:client:CuffPlayer",
            icon = "fas fa-hands",
            label = "Cuff / Uncuff",
            job = "police",
            item = 'handcuffs',
        },
        {
          type = "client",
          event = "police:client:EscortPlayer",
          icon = "fas fa-key",
          label = "Escort",
        },
        {
            type = "client",
            event = "police:client:PutPlayerInVehicle",
            icon = "fas fa-chevron-circle-left",
            job = 'police',
            label = "Place in Vehicle",
        },
        {
            type = "client",
            event = "police:client:SetPlayerOutVehicle",
            icon = "fas fa-chevron-circle-right",
            job = 'police',
            label = "Take out of Vehicle",
        },
    }
}



Config.Peds = {

    { -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(1692.19, 4829.85, 41.06, 179.32),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-710.26, -153.28, 36.42, 128.26),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-1193.2, -772.16, 16.32, 134.11),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(425.25, -798.88, 28.50, 183.85),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-162.86, -303.51, 38.73, 251.87),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(76.49, -1400.02, 28.38, 356.31),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords =  vector4(-828.37, -1078.04, 10.33, 309.31),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords =  vector4(-1450.29, -237.28, 48.81, 43.46),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(10.05, 6517.75, 30.88, 141.73),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords =  vector4(617.63, 2760.58, 41.09, 188.66),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(1189.23, 2709.8, 37.22, 276.97),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-3172.8, 1046.94, 19.86, 340.73),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-1106.52, 2705.18, 18.11, 315.85),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(-1207.97, -1455.85, 3.34, 30.4),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(121.84, -223.77, 53.56, 338.46),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },


    -------ambulance||

    { -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(308.16, -600.07, 43.27, 60.92),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },

    { -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(463.97, -996.87, 30.69, 81.03),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
    { -----------Clothing-------------
        model = 'a_m_y_smartcaspat_01',
        coords = vector4(267.08, -1795.32, 26.93, 229.93),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },


	-----------BARBER----------
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(-814.02, -183.77, 36.57, 117.82),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(138.22, -1707.01, 28.29, 139.86),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(-1281.39, -1117.24, 5.99, 89.75),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(1930.39, 3732.17, 31.84, 214.4),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(1215.37, -473.54, 65.21, 74.34),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(-33.92, -155.47, 56.08, 345.33),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },
	{ -----------Clothing-------------
        model = 'mp_m_g_vagfun_01',
        coords = vector4(-275.76, 6225.72, 30.7, 43.02),
        gender = 'male',
        freeze = true,
        invincible = true,
        blockevents = true,
    },


    
    ["GruppeSechsPed"] = {
		model = 's_m_m_armoured_02', 
		coords = vector4(-4.44, -659.52, 33.48, 189.69),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
					type = "client",
					event = "gruppesechs:getTruck",
					icon = "fas fa-sign-in-alt",
					label = "Get Gruppe Sechs Truck",
				},
				{
					type = "server",
					event = "gruppesechs:server:PayShift",
					icon = "fas fa-sign-in-alt",
					label = "Collect Pay Check",
				},
			},
			distance = 1.5,
		},
	},

	--[[["huntsell"] = {
		model = 'u_m_y_chip', 
		coords = vector4(571.69, 2797.61, 42.02, 299.66),
		minusOne = true, 
		freeze = true, 
		invincible = true, 
		blockevents = true,
		target = { 
			options = {
				{
					type = "client",
					event = "keep-hunting:client:sellREQ",
                	icon = "fas fa-sack-dollar",
                	label = "Sell All"
				},
				
			},
			distance = 1.5,
		},
	},]]--
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function JobTypeCheck() return true end
local function ItemCheck() return true end
local function CitizenCheck() return true end

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
