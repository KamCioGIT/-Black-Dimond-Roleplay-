Config = {}
Config.Framework = "new-qb" -- esx -- old-qb -- new-qb
Config.Nui = {
    key = "F2", text = "Open Inventory", command = "openinventory"
}
Config.Hotbar = {
    enable = true, text = "Inventory Hotbar", command = "invhotbar", key = "TAB"
}

Config.InteractionType = "drawtext" -- drawtext -- qb-target
Config.ProfilePicture = "steam"   -- discord -- steam -- default
Config.DefaultPicture = "https://cdn.discordapp.com/attachments/983471660684423240/1147567519712940044/example-pp.png"
Config.EnableOpenAnim = true
Config.EnableSecretSlot = false
Config.CashItem = false
Config.EnableCraft = true
Config.UseCharacterName = false
Config.UseDiscordWebhooks = true
Config.Sql = "oxmysql" 
Config.WeaponRepair = {
    coords = vector4(753.18, -1120.02, 21.60, 350.7),
    ped = "a_m_m_og_boss_01",
    text = "Repair Weapon",
    cost = 500
}
Config.Bag = {
    weight = 10000,
    slot = 60,

}

Config.Commands = {
    ["rob"] = "robplayer",
    ["deadloot"] = "deadloot",
    ["additem"] = "additem",
    ["clearinv"] = "clearinv"
}
Config.MaxWeights = {
    Player = 100000,
    Drop = 125000,
}
Config.Slots = {
    Player = 60,
    Drop = 80,
    Shops = 45
}


Config.DropMarker = {
    type = 20,
    r = 120,
    g = 10,
    b = 20,
}

Config.BanPlayer = function(playerid)
    print("Player tryin dupe or open other inventory unacceptable distance - " .. GetPlayerName(playerid))
end

Config.Stashs = {
    ["policestash"] = {
        label = "Police Stash",
        maxweight = 35000,
        slot = 30,
        job = {
            ["police"] = { 0, 1, 2 },
        },
        coords = vector3(461.87, -982.59, 30.69)
    },
    -- ["publicstash"] = {
    --     label = "Public Stash",
    --     maxweight = 35000,
    --     slot = 30,
    --     job = 'all',
    --     coords = vector3(-302.09, 225.04, 87.98)
    -- },
}

local ShopItems = {
    [1] = { name = "sandwich", price = 80, count = 10 },
    [2] = { name = "tosti", price = 80, count = 10 },
    [3] = { name = "kurkakola", price = 80, count = 10 },
    [4] = { name = "twerks_candy", price = 80, count = 10 },
    [5] = { name = "water_bottle", price = 80, count = 10 },
    [6] = { name = "beer", price = 80, count = 10 },
    [7] = { name = "lighter", price = 80, count = 10 },
    [8] = { name = "rolling_paper", price = 80, count = 10 },
}

Config.Shops = {
    ["policeshop"] = {
        label = "Police Shop",
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 1,
            scale = 0.5,
            color = 5,
        },
        job = {
            ["police"] = { 0, 1, 2, 3, 4, 5, 6 },
        },
        items = {
            [1] = { name = "weapon_pistol", price = 10, count = 10 },
            [2] = { name = "weapon_flashlight", price = 10, count = 10 },
            [3] = { name = "handcuffs", price = 10, count = 10 },
            [4] = { name = "weapon_stungun", price = 10, count = 10 },
            [5] = { name = "weapon_assaultsmg", price = 10, count = 10 },
            [6] = { name = "weapon_smg", price = 10, count = 10 },
            [7] = { name = "weapon_pistol50", price = 10, count = 10 },
            [8] = { name = "bandage", price = 10, count = 10 },
            [9] = { name = "pistol_ammo", price = 10, count = 10 },
            [10] = { name = "smg_ammo", price = 10, count = 10 },
            [11] = { name = "pistol_suppressor", price = 10, count = 10 },
            [12] = { name = "weapon_combatpistol", price = 10, count = 10 },
            [13] = { name = "rifle_ammo", price = 10, count = 10 }

        },
        coords = vector3(458.02, -979.17, 30.69)
    },
    ["market"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(25.65, -1346.6, 29.5),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market2"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(547.85, 2670.77, 42.16),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market3"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(1960.94, 3741.09, 32.34),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market4"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-3040.04, 585.45, 7.91),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market5"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-3242.85, 1001.27, 12.83),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market6"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-2967.84, 391.34, 15.04),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market7"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-1487.53, -378.72, 40.16),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market8"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-707.36, -913.96, 19.22),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market9"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(-47.94, -1757.37, 29.42),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market10"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(1163.46, -323.09, 69.21),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market11"] = {
        label = "Market",
        job = 'all',
        items = ShopItems,
        coords = vector3(373.95, 326.73, 103.57),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    },
    ["market12"] = {
        label = "Market",
        job = {
            ["police"] = { 0, 1, 2, 3, 4, 5, 6 },
        },
        items = ShopItems,
        coords = vector3(375.3, 325.79, 103.57),
        Blip = {
            enable = true, -- show blip = true  -- hide blip false
            id = 52,
            scale = 0.5,
            color = 5,
        },
    }
}




Config.Translate = {
    ["maxweight"] = "There is not enough free space!",
    ["cantopen"] = "You cant open this inventory rn!",
    ["raisehands"] = "The person didnt raise her hands!",
    ["requireweapon"] = "You dont have any weapon!",
    ["playernotfound"] = "There is no player nearby!",
    ["deadcheck"] = "The player is not dead",
    ["itemadded"] = "You gave %s to %s with %s",
    ["notadded"] = "Item not added",
    ["itemcantforund"] = "Item cant found!",
    ["playernotfound"] = "Player not found",
    ["parsed"] = "Items are parsed",
    ["inventorycleared"] = "Player's inventory cleared!",
    ["notenoughmoney"] = "You don't have enough money for buy this item!",
    ["notenoughmoneyforrepair"] = "You don't have enough money for repair this weapon!",
    ["weaponcannotfind"] = "Weapon can't find!",
    ["cantuse"] = "You can't use this weapon bcs broken!",
    ["maxammo"] = "Max Ammo",
    ["incooldown"] = "You are in cooldown please wait!",
    ["weaponfixed"] = "Your weapon has been repaired!",
    ["add"] = "Added",
    ["remove"] = "Removed",
    ["use"] = "Used",
    ["holster"] = "Holster",
    ["unholster"] = "Unholster",
    ["ammoadded"] = "Ammo added",
    ["ammoadding"] = "Ammo addin",
    ["itemaddtitle"] = "Item Added",
    ["itemremovetitle"] = "Item Removed",
    ["itemaddlog"] = "Player **%s** took **%s** - **%s** from **%s**",
    ["itemremovelog"] = "Player **%s** removed **%s** - **%s** from **%s**",

    --Html Append
    ["inventorytext"] = "INVENTORY",
    ["attachmentstext"] = "ATTACHMENTS",
    ["crafttext"] = "CRAFT",
    ["craftbook"] = "CRAFT BOOK",
    ["clothestext"] = "CLOTHES",
    ["usetext"] = "USE",
    ["givetext"] = "GIVE",
    ["parsetext"] = "PARSE",
    ["backpack"] = "BACKPACK",
    ["info"] = "INFO",
    ["durability"] = "Durability",
    ["nearbyplayers"] = "Nearby Players",
    ["closeesc"] = "ESC",
    ["close"] = "CLOSE",
    ["craftprogress"] = "Craft an item to see the progres...",
    ["craftstarted"] = "Crafting...",
    ["preview"] = "Preview",
    ["customize"] = "CUSTOMIZE",
    ["changecolors"] = "Change colors",
    ["reset"] = "RESET",
    ["revert"] = "Revelt to default",
    ["settings"] = "SETTINGS",
    ["settingstext"] = "Change features",
    ["settingsinfo"] = "Show info on click",
    ["settingssound"] = "Enable/Disable Sound",
    ["settingsblur"] = "Blur Background",
    ["settingssort"] = "Automatic Sort",
    ["maincolor"] = "Main Color",
    ["bordercolor"] = "Border Color",
    ["buttonscolor"] = "Buttons Color",
    ["itemnameunderline"] = "Item Name Underline",
    ["hat"] = "HAT",
    ["upperbody"] = "UPPER BODY",
    ["learneditems"] = "Learned items",
    ["putitem"] = "Please put item in slots to preview possible crafting.",
    ["crafterror"] = "No craftings with those items",
    ["selectitem"] = "Select an item receipe from craftbook to craft item",
    ["tobecraft"] = "To be crafted",
    ["ingredients"] = "Ingredients",
    ["processtime"] = "Process Time",
    ["lackofingredients"] = "Lack of ingredients",
    ["craftsecond"] = "seconds crafting time per one",
    ["needingredients"] = "You need more ingredients to craft",
    ["cancel"] = "CANCEL",
    ["ammo"] = "Ammo",
    ["weight"] = "Weight",
    ["eject"] = "Eject",
    ["magazine"] = "Magazine",
    -- version 1.2
    ["Drop"] = "Drop",
    ["Stash"] = "Stash",
    ["Glovebox"] = "Glovebox",
    ["Shop"] = "Shop",
    ["Trunk"] = "Trunk",

    ---version 1.1.8
    ["giveitemlog"] = "Player **%s** took **%s** - **%s** from **%s**",
    ["giveitemlogsend"] = "Player **%s** gave **%s** - **%s** to **%s**",
}


Config.SendMessage = function(message, isError, part, source)
    if part == nil then part = "client" end
    if part == "client" then
        if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerEvent("QBCore:Notify", message, p)
        else
            TriggerEvent("esx:showNotification", message)
        end
    elseif part == "server" then
        if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
            local p = nil
            if isError then p = "error" else p = "success" end
            TriggerClientEvent('QBCore:Notify', source, message, p)
        else
            TriggerClientEvent("esx:showNotification", source, message)
        end
    end
end

Config.TrunkAndGloveboxWeight = {
    ["trunk"] = {
        [0] = {
            maxweight = 38000,
            slots = 30
        },
        [1] = {
            maxweight = 50000,
            slots = 40
        },
        [2] = {
            maxweight = 75000,
            slots = 50
        },
        [3] = {
            maxweight = 42000,
            slots = 35
        },
        [4] = {
            maxweight = 38000,
            slots = 30
        },
        [5] = {
            maxweight = 30000,
            slots = 25
        },
        [6] = {
            maxweight = 30000,
            slots = 25
        },
        [7] = {
            maxweight = 30000,
            slots = 25
        },
        [8] = {
            maxweight = 15000,
            slots = 15
        },
        [9] = {
            maxweight = 60000,
            slots = 35
        },
        [12] = {
            maxweight = 120000,
            slots = 25
        },
        [13] = {
            maxweight = 0,
            slots = 0
        },
        [14] = {
            maxweight = 120000,
            slots = 50
        },
        [15] = {
            maxweight = 120000,
            slots = 50
        },
        [16] = {
            maxweight = 120000,
            slots = 50
        }
    },
    ["glovebox"] = {
        [0] = {
            maxweight = 10000,
            slots = 6
        },
        [1] = {
            maxweight = 10000,
            slots = 6
        },
        [2] = {
            maxweight = 10000,
            slots = 6
        },
        [3] = {
            maxweight = 10000,
            slots = 6
        },
        [4] = {
            maxweight = 10000,
            slots = 6
        },
        [5] = {
            maxweight = 10000,
            slots = 6
        },
        [6] = {
            maxweight = 10000,
            slots = 6
        },
        [7] = {
            maxweight = 10000,
            slots = 6
        },
        [8] = {
            maxweight = 10000,
            slots = 6
        },
        [9] = {
            maxweight = 10000,
            slots = 6
        },
        [12] = {
            maxweight = 10000,
            slots = 6
        },
        [13] = {
            maxweight = 10000,
            slots = 6
        },
        [14] = {
            maxweight = 10000,
            slots = 6
        },
        [15] = {
            maxweight = 10000,
            slots = 6
        },
        [16] = {
            maxweight = 10000,
            slots = 6
        }
    }
}

Config.WeaponQualityDecreaseAmount = {
    ['weapon_dagger']                = 0.05,
    ['weapon_bat']                   = 0.05,
    ['weapon_bottle']                = 0.05,
    ['weapon_crowbar']               = 0.05,
    ['weapon_golfclub']              = 0.05,
    ['weapon_hammer']                = 0.05,
    ['weapon_block19']               = 0.05,
    ['weapon_treekatana']            = 0.05,
    ['weapon_lightsabergreen']       = 0.05,
    ['weapon_lightsaberred']         = 0.05,
    ['weapon_lightsaberblue']        = 0.05,
    ['weapon_bayonet']               = 0.05,
    ['weapon_rainbowbayonet']        = 0.05,
    ['weapon_diamondpickaxe']        = 0.05,
    ['weapon_python']                = 0.05,
    ['weapon_hatchet']               = 0.05,
    ['weapon_knuckle']               = 0.05,
    ['weapon_knife']                 = 0.05,
    ['weapon_flashbang']             = 0.05,
    ['weapon_smok2grenade']          = 0.05,
    ['weapon_machete']               = 0.05,
    ['weapon_switchblade']           = 0.05,
    ['weapon_wrench']                = 0.05,
    ['weapon_battleaxe']             = 0.05,
    ['weapon_poolcue']               = 0.05,
    ['weapon_briefcase']             = 0.05,
    ['weapon_briefcase_02']          = 0.05,
    ['weapon_garbagebag']            = 0.05,
    ['weapon_handcuffs']             = 0.05,
    ['weapon_bread']                 = 0.05,
    ['weapon_stone_hatchet']         = 0.05,
    ['weapon_pistol']                = 0.05,
    ['weapon_pistol_mk2']            = 0.05,
    ['weapon_combatpistol']          = 0.05,
    ['weapon_appistol']              = 0.05,
    ['weapon_pistol50']              = 0.05,
    ['weapon_mp7']                   = 0.05,
    ['weapon_fn57']                  = 0.05,
    ['weapon_snspistol']             = 0.05,
    ['weapon_heavypistol']           = 0.05,
    ['weapon_vintagepistol']         = 0.05,
    ['weapon_flaregun']              = 0.05,
    ['weapon_marksmanpistol']        = 0.05,
    ['weapon_revolver']              = 0.05,
    ['weapon_revolver_mk2']          = 0.05,
    ['weapon_doubleaction']          = 0.05,
    ['weapon_snspistol_mk2']         = 0.05,
    ['weapon_raypistol']             = 0.05,
    ['weapon_ceramicpistol']         = 0.05,
    ['weapon_navyrevolver']          = 0.05,
    ['weapon_gadgetpistol']          = 0.05,
    ['weapon_microsmg']              = 0.05,
    ['weapon_smg']                   = 0.05,
    ['weapon_smg_mk2']               = 0.05,
    ['weapon_assaultsmg']            = 0.05,
    ['weapon_combatpdw']             = 0.05,
    ['weapon_machinepistol']         = 0.05,
    ['weapon_minismg']               = 0.05,
    ['weapon_raycarbine']            = 0.05,
    ['weapon_minismg2']              = 0.05,
    ['weapon_mp5']                   = 0.05,
    ['weapon_draco']                 = 0.05,
    ['weapon_browning']              = 0.05,
    ['weapon_dp9']                   = 0.05,
    ['weapon_coltpython']            = 0.05,
    ['weapon_pumpshotgun']           = 0.05,
    ['weapon_sawnoffshotgun']        = 0.05,
    ['weapon_assaultshotgun']        = 0.05,
    ['weapon_bullpupshotgun']        = 0.05,
    ['weapon_musket']                = 0.05,
    ['weapon_heavyshotgun']          = 0.05,
    ['weapon_dbshotgun']             = 0.05,
    ['weapon_autoshotgun']           = 0.05,
    ['weapon_pumpshotgun_mk2']       = 0.05,
    ['weapon_combatshotgun']         = 0.05,
    ['weapon_assaultrifle']          = 0.05,
    ['weapon_assaultrifle_mk2']      = 0.05,
    ['weapon_carbinerifle']          = 0.05,
    ['weapon_carbinerifle_mk2']      = 0.05,
    ['weapon_advancedrifle']         = 0.05,
    ['weapon_specialcarbine']        = 0.05,
    ['weapon_bullpuprifle']          = 0.05,
    ['weapon_compactrifle']          = 0.05,
    ['weapon_specialcarbine_mk2']    = 0.05,
    ['weapon_bullpuprifle_mk2']      = 0.05,
    ['weapon_militaryrifle']         = 0.05,
    ['weapon_heavyrifle']            = 0.05,
    ['weapon_assaultrifle2']         = 0.05,
    ['weapon_mg']                    = 0.05,
    ['weapon_combatmg']              = 0.05,
    ['weapon_gusenberg']             = 0.05,
    ['weapon_combatmg_mk2']          = 0.05,
    ['weapon_sniperrifle']           = 0.05,
    ['weapon_sniperrifle2']          = 0.05,
    ['weapon_dragunov']              = 0.05,
    ['weapon_heavysniper']           = 0.05,
    ['weapon_marksmanrifle']         = 0.05,
    ['weapon_remotesniper']          = 0.05,
    ['weapon_heavysniper_mk2']       = 0.05,
    ['weapon_marksmanrifle_mk2']     = 0.05,
    ['weapon_rpg']                   = 0.05,
    ['weapon_grenadelauncher']       = 0.05,
    ['weapon_grenadelauncher_smoke'] = 0.05,
    ['weapon_emplauncher']           = 0.05,
    ['weapon_minigun']               = 0.05,
    ['weapon_firework']              = 0.05,
    ['weapon_railgun']               = 0.05,
    ['weapon_hominglauncher']        = 0.05,
    ['weapon_compactlauncher']       = 0.05,
    ['weapon_rayminigun']            = 0.05,
    ['weapon_grenade']               = 0.05,
    ['weapon_flashbang']             = 0.05,
    ['weapon_bzgas']                 = 0.05,
    ['weapon_molotov']               = 0.05,
    ['weapon_stickybomb']            = 0.05,
    ['weapon_proxmine']              = 0.05,
    ['weapon_snowball']              = 0.05,
    ['weapon_pipebomb']              = 0.05,
    ['weapon_ball']                  = 0.05,
    ['weapon_smokegrenade']          = 0.05,
    ['weapon_flare']                 = 0.05,
    ['weapon_combatpdw']             = 0.05,
    ['weapon_m14']                   = 0.05,
    ['weapon_glock']                 = 0.05,
    ['weapon_m4']                    = 0.05,
    ['weapon_taser']                 = 0.05,
    ['weapon_petrolcan']             = 0.05,
    ['weapon_fireextinguisher']      = 0.05,
    ['weapon_hazardcan']             = 0.05,
    ['weapon_fertilizercan']         = 0.05,
}
