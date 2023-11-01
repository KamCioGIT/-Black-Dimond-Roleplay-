ItemList = {}

Citizen.CreateThread(function()
    while not Framework do
        Citizen.Wait(0)
    end
    RegisterCommand('itemlistconvert', function(source)
        if Config.Framework == 'esx' then
            local items = HSN.ExecuteSql("SELECT * FROM items")

            if items and next(items) then
                if tonumber(source) <= 0 then
                    if items and table.type(items) ~= 'empty' then
                        local dump = {}
                        local count = 0
                        local ignoreList = {
                            "weapon_",
                            "pistol_",
                            "pistol50_",
                            "revolver_",
                            "smg_",
                            "combatpdw_",
                            "shotgun_",
                            "rifle_",
                            "carbine_",
                            "gusenberg_",
                            "sniper_",
                            "snipermax_",
                            "tint_",
                            "weaponlicense",
                            "id_card",
                            "driver_license",
                            "weapon_ceramicpistol",
                            "_ammo"
                        }

                        local function checkIgnoredNames(name)
                            for i = 1, #ignoreList do
                                if string.find(name, ignoreList[i]) then
                                    return true
                                end
                            end
                            return false
                        end

                        for k, item in pairs(items) do
                            if type(item) == 'table' then
                                if not item.name then item.name = k end

                                if not ItemList[item.name] and not checkIgnoredNames(item.name) then
                                    item.close = false
                                    item.unique = item.unique
                                    item.description = item.label
                                    item.type = "item"
                                    item.weight = 0
                                    dump[k] = item
                                    count += 1
                                end
                            end
                        end

                        if table.type(dump) ~= 'empty' then
                            local filePath = 'shared/itemlist.lua'
                            local fileContent = LoadResourceFile('codem-inventory', filePath)

                            if not fileContent then
                                print("ERROR: Unable to read the file content.")
                                return
                            end
                            fileContent = fileContent:gsub("Config.Itemlist = {$", "")

                            fileContent = fileContent:gsub("}$", "")

                            local itemFormat = [[
                            [%q] = {
                                name = %q,
                                label = %q,
                                weight = %s,
                                closeafteruse = %s,
                                description = %q,
                                unique = %s,
                                type = %q,

                            },
                            ]]
                            local itemsContent = ""
                            itemsContent = [[
                            ["cph4"] = {
                                name = "cph4",
                                label = "C.P.H.4",
                                unique = false,
                                weight = 500,
                                description = "CPH 4",
                                type = "craft",
                                closeafteruse = true,
                                secondsforcraft = 50,
                                requiredItems = {
                                    { name = "water",     count = 1 },
                                    { name = "calcium",   count = 1 },
                                    { name = "hydrogen",  count = 1 },
                                    { name = "potassium", count = 1 },
                                    { name = "beaker",    count = 1 },
                                },
                            },
                            ["weaponlicense"] = {
                                name = "weaponlicense",
                                label = "Weapon License",
                                weight = 0,
                                closeafteruse = true,
                                description = "Weapon License",
                                unique = true,
                                type = "item",

                            },
                            ["cash"] = {
                                name = "cash",
                                label = "Cash",
                                weight = 0,
                                closeafteruse = true,
                                description = "Money",
                                unique = false,
                                detachinfo = true,
                                type = "item",

                            },
                                ["weaponlicense"] = {
                                name = "weaponlicense",
                                label = "Weapon License",
                                weight = 0,
                                closeafteruse = true,
                                description = "Weapon License",
                                unique = true,
                                type = "item",

                            },
                            ["id_card"] = {
                                name = "id_card",
                                label = "Citizen Card",
                                unique = true,
                                weight = 100,
                                description = "Citizen Card",
                                type = "item",
                                closeafteruse = false
                            },
                            ["driver_license"] = {
                                name = "driver_license",
                                label = "Driver License",
                                unique = true,
                                weight = 100,
                                description = "Citizen Card",
                                type = "item",
                                closeafteruse = false
                            },
                            ["pistol_ammo"] = {
                                name = "pistol_ammo",
                                label = "Pistol Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },
                            ["smg_ammo"] = {
                                name = "smg_ammo",
                                label = "SMG Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },
                            ["shotgun_ammo"] = {
                                name = "shotgun_ammo",
                                label = "Shotgun Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },
                            ["rifle_ammo"] = {
                                name = "rifle_ammo",
                                label = "Rifle Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },
                            ["mg_ammo"] = {
                                name = "mg_ammo",
                                label = "MG Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },

                            ["sniper_ammo"] = {
                                name = "sniper_ammo",
                                label = "Sniper Ammo",
                                unique = false,
                                weight = 0,
                                description = "Ammo",
                                type = "ammo",
                                closeafteruse = true
                            },
                            ["weapon_pistol"] = {
                                name = "weapon_pistol",
                                label = "Pistol",
                                unique = true,
                                weight = 500,
                                description = "Pistol",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_combatpistol"] = {
                                name = "weapon_combatpistol",
                                label = "Combat Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_appistol"] = {
                                name = "weapon_appistol",
                                label = "AP Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_pistol50"] = {
                                name = "weapon_pistol50",
                                label = "Pistol.50",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_revolver"] = {
                                name = "weapon_revolver",
                                label = "Revolver",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_snspistol"] = {
                                name = "weapon_snspistol",
                                label = "SNS Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_heavypistol"] = {
                                name = "weapon_heavypistol",
                                label = "Heavy Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_revolver_mk2"] = {
                                name = "weapon_revolver_mk2",
                                label = "Revolver MK2",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_pistol_mk2"] = {
                                name = "weapon_pistol_mk2",
                                label = "Pistol MK2",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },


                            ["weapon_vintagepistol"] = {
                                name = "weapon_vintagepistol",
                                label = "Vintage Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_ceramicpistol"] = {
                                name = "weapon_ceramicpistol",
                                label = "Ceramic Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_ceramicpistol"] = {
                                name = "weapon_ceramicpistol",
                                label = "Ceramic Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["pistol_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_microsmg"] = {
                                name = "weapon_microsmg",
                                label = "Micro SMG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_smg"] = {
                                name = "weapon_smg",
                                label = "SMG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_assaultsmg"] = {
                                name = "weapon_assaultsmg",
                                label = "Assault SMG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_minismg"] = {
                                name = "weapon_minismg",
                                label = "Mini SMG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_smg_mk2"] = {
                                name = "weapon_smg_mk2",
                                label = "SMG MK II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_machinepistol"] = {
                                name = "weapon_machinepistol",
                                label = "Machine Pistol",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_combatpdw"] = {
                                name = "weapon_combatpdw",
                                label = "Combat PDW",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["smg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            --
                            ["weapon_pumpshotgun"] = {
                                name = "weapon_pumpshotgun",
                                label = "Pump Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_sawnoffshotgun"] = {
                                name = "weapon_sawnoffshotgun",
                                label = "Sawed-Off Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_assaultshotgun"] = {
                                name = "weapon_assaultshotgun",
                                label = "Assault Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_bullpupshotgun"] = {
                                name = "weapon_bullpupshotgun",
                                label = "Bullpup Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_pumpshotgun_mk2"] = {
                                name = "weapon_pumpshotgun_mk2",
                                label = "Pump Shotgun Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_heavyshotgun"] = {
                                name = "weapon_heavyshotgun",
                                label = "Heavy Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_combatshotgun"] = {
                                name = "weapon_combatshotgun",
                                label = "Combat Shotgun",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["shotgun_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_assaultrifle"] = {
                                name = "weapon_assaultrifle",
                                label = "Assault Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_carbinerifle"] = {
                                name = "weapon_carbinerifle",
                                label = "Carbine Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_advancedrifle"] = {
                                name = "weapon_advancedrifle",
                                label = "Advanced Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_specialcarbine"] = {
                                name = "weapon_specialcarbine",
                                label = "Special Carbine",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_bullpuprifle"] = {
                                name = "weapon_bullpuprifle",
                                label = "Bullpup Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_bullpuprifle_mk2"] = {
                                name = "weapon_bullpuprifle_mk2",
                                label = "Bullpup Rifle Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_specialcarbine_mk2"] = {
                                name = "weapon_specialcarbine_mk2",
                                label = "Special Carbine Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_assaultrifle_mk2"] = {
                                name = "weapon_assaultrifle_mk2",
                                label = "Assault Rifle Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_carbinerifle_mk2"] = {
                                name = "weapon_carbinerifle_mk2",
                                label = "Carbine Rifle Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_compactrifle"] = {
                                name = "weapon_compactrifle",
                                label = "Compact Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_militaryrifle"] = {
                                name = "weapon_militaryrifle",
                                label = "Military Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["rifle_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_mg"] = {
                                name = "weapon_mg",
                                label = "MG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["mg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_combatmg"] = {
                                name = "weapon_combatmg",
                                label = "Combat MG",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["mg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_combatmg_mk2"] = {
                                name = "weapon_combatmg_mk2",
                                label = "Combat MG MK II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["mg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_gusenberg"] = {
                                name = "weapon_gusenberg",
                                label = "Gusenberg Sweeper",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["mg_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_sniperrifle"] = {
                                name = "weapon_sniperrifle",
                                label = "Sniper Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_heavysniper"] = {
                                name = "weapon_heavysniper",
                                label = "Heavy Sniper",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["weapon_flashlight"] = {
                                name = "weapon_flashlight",
                                label = "Flashlight",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = nil,
                                closeafteruse = true
                            },
                            ["weapon_heavysniper_mk2"] = {
                                name = "weapon_heavysniper_mk2",
                                label = "Heavy Sniper Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_marksmanrifle"] = {
                                name = "weapon_marksmanrifle",
                                label = "Marksman Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_marksmanrifle_mk2"] = {
                                name = "weapon_marksmanrifle_mk2",
                                label = "Marksman Rifle Mk II",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },

                            ["weapon_precisionrifle"] = {
                                name = "weapon_precisionrifle",
                                label = "Precision Rifle",
                                unique = true,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                ammotype = {
                                    ["sniper_ammo"] = 12,
                                },
                                closeafteruse = true
                            },
                            ["pistol_defaultclip"] = {
                                name = "pistol_defaultclip",
                                label = "Pistol Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_extendedclip"] = {
                                name = "pistol_extendedclip",
                                label = "Pistol Ext. Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["flashlight"] = {
                                name = "flashlight",
                                label = "Flashligh",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_defaultrounds"] = {
                                name = "revolver_defaultrounds",
                                label = "Revolver D. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_tracerrounds"] = {
                                name = "revolver_tracerrounds",
                                label = "Revolver T. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_incendiaryrounds"] = {
                                name = "revolver_incendiaryrounds",
                                label = "Revolver I. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_hollowpointrounds"] = {
                                name = "revolver_hollowpointrounds",
                                label = "Revolver HP. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_fullmetaljacketrounds"] = {
                                name = "revolver_fullmetaljacketrounds",
                                label = "Revolver FMJ",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_holographicsight"] = {
                                name = "revolver_holographicsight",
                                label = "Holographic Sight",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["revolver_smallscope"] = {
                                name = "revolver_smallscope",
                                label = "Revolver Small Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_tracerrounds"] = {
                                name = "pistol_tracerrounds",
                                label = "Pistol T. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_incendiaryrounds"] = {
                                name = "pistol_incendiaryrounds",
                                label = "Pistol I. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_hollowpointrounds"] = {
                                name = "pistol_hollowpointrounds",
                                label = "Pistol HP. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_fullmetaljacketrounds"] = {
                                name = "pistol_fullmetaljacketrounds",
                                label = "Pistol FMJ",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["pistol_mountedscope"] = {
                                name = "pistol_mountedscope",
                                label = "Pistol Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_defaultclip"] = {
                                name = "smg_defaultclip",
                                label = "Default Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_extendedclip"] = {
                                name = "smg_extendedclip",
                                label = "Extended Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_scope"] = {
                                name = "smg_scope",
                                label = "SMG Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_suppressor"] = {
                                name = "smg_suppressor",
                                label = "SMG Supp.",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_incendiaryrounds"] = {
                                name = "smg_incendiaryrounds",
                                label = "SMG I. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_fmj"] = {
                                name = "smg_fmj",
                                label = "SMG FMJ",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_hollowpoint"] = {
                                name = "smg_hollowpoint",
                                label = "Hollowpoint",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["holographic"] = {
                                name = "holographic",
                                label = "Holographic",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["smg_drummagazine"] = {
                                name = "smg_drummagazine",
                                label = "Drum Magazine",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["shotgun_suppressor"] = {
                                name = "shotgun_suppressor",
                                label = "Shotgun Supp.",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["shotgun_defaultclip"] = {
                                name = "shotgun_defaultclip",
                                label = "Shotgun Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["shotgun_extendedclip"] = {
                                name = "shotgun_extendedclip",
                                label = "Extended Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["shotgun_drummagazine"] = {
                                name = "shotgun_drummagazine",
                                label = "Drum Magazine",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_scope"] = {
                                name = "rifle_scope",
                                label = "Rifle Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_suppressor"] = {
                                name = "rifle_suppressor",
                                label = "Rifle Supp.",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_defaultclip"] = {
                                name = "rifle_defaultclip",
                                label = "Rifle Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_extendedclip"] = {
                                name = "rifle_extendedclip",
                                label = "Extended Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_drummagazine"] = {
                                name = "rifle_drummagazine",
                                label = "Drum Magazine",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_tracerrounds"] = {
                                name = "rifle_tracerrounds",
                                label = "Rifle T. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_armorpiercing"] = {
                                name = "rifle_armorpiercing",
                                label = "Rifle A. Piercing",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_incendiaryrounds"] = {
                                name = "rifle_incendiaryrounds",
                                label = "Rifle I. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_fmj"] = {
                                name = "rifle_fmj",
                                label = "Rifle FMJ",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_smallscope"] = {
                                name = "rifle_smallscope",
                                label = "Small Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_mediumscope"] = {
                                name = "rifle_mediumscope",
                                label = "Medium Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle7"] = {
                                name = "muzzle7",
                                label = "Muzzle 7",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle6"] = {
                                name = "muzzle6",
                                label = "Muzzle 6",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle5"] = {
                                name = "muzzle5",
                                label = "Muzzle 5",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle4"] = {
                                name = "muzzle4",
                                label = "Muzzle 4",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle3"] = {
                                name = "muzzle3",
                                label = "Muzzle 3",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle2"] = {
                                name = "muzzle2",
                                label = "Muzzle 2",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["muzzle1"] = {
                                name = "muzzle1",
                                label = "Muzzle 1",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["rifle_largescope"] = {
                                name = "rifle_largescope",
                                label = "Large Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_defaultclip"] = {
                                name = "machine_defaultclip",
                                label = "Default Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_extendedclip"] = {
                                name = "machine_extendedclip",
                                label = "Extended Clip",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_scope"] = {
                                name = "machine_scope",
                                label = "Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_tracerrounds"] = {
                                name = "machine_tracerrounds",
                                label = "Tracer Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_incendiaryrounds"] = {
                                name = "machine_incendiaryrounds",
                                label = "Incen. Rounds",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_armorpiercing"] = {
                                name = "machine_armorpiercing",
                                label = "Armor Piercing",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_fmj"] = {
                                name = "machine_fmj",
                                label = "Machine Gun FMJ",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_mediumscope"] = {
                                name = "machine_mediumscope",
                                label = "M. Gun Scope",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["machine_largescope"] = {
                                name = "machine_largescope",
                                label = "M. Gun Scope (L)",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },
                            ["weapon_stungun"] = {
                                name = "weapon_stungun",
                                label = "Stungun",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "weapon",
                                closeafteruse = true
                            },
                            ["pistol_suppressor"] = {
                                name = "pistol_suppressor",
                                label = "Suppressor",
                                unique = false,
                                weight = 500,
                                description = "",
                                type = "item",
                                closeafteruse = true
                            },

                            ]]

                            for _, item in pairs(dump) do
                                if not ItemList[item.name] then
                                    local itemStr = itemFormat:format(item.name, item.name, item.label, item.weight,
                                        item.shouldClose or false,
                                        item.description or 'nil', item.unique or false, item.type or false)
                                    itemStr = itemStr:gsub('[%s]-[%w]+ = "?nil"?,?', '')
                                    itemsContent = itemsContent .. itemStr
                                    ItemList[item.name] = item
                                end
                            end

                            fileContent = "Config.Itemlist = {\n" .. itemsContent .. "\n}"

                            SaveResourceFile('codem-inventory', filePath, fileContent, -1)
                            print('Restart Resource to load the items.')
                            print(count, 'items have been copied')
                        end
                    end
                end
                local count = 0

                Wait(1000)

                for _ in pairs(ItemList) do
                    count += 1
                end

                print((' loaded %d items'):format(count))
            end

            Wait(500)
        end


        if Config.Framework == 'old-qb' or Config.Framework == 'new-qb' then
            if tonumber(source) <= 0 then
                local QBCore = Framework
                local items = QBCore.Shared.Items

                if items and table.type(items) ~= 'empty' then
                    local dump = {}
                    local count = 0
                    local ignoreList = {
                        "weapon_",
                        "pistol_",
                        "pistol50_",
                        "revolver_",
                        "smg_",
                        "combatpdw_",
                        "shotgun_",
                        "rifle_",
                        "carbine_",
                        "gusenberg_",
                        "sniper_",
                        "snipermax_",
                        "tint_",
                        "weaponlicense",
                        "id_card",
                        "driver_license",
                        "weapon_ceramicpistol",
                        "_ammo"
                    }

                    local function checkIgnoredNames(name)
                        for i = 1, #ignoreList do
                            if string.find(name, ignoreList[i]) then
                                return true
                            end
                        end
                        return false
                    end

                    for k, item in pairs(items) do
                        if type(item) == 'table' then
                            if not item.name then item.name = k end

                            if not ItemList[item.name] and not checkIgnoredNames(item.name) then
                                item.close = item.shouldClose == nil and true or item.shouldClose
                                item.unique = item.unique
                                item.description = item.description
                                item.type = item.type
                                item.weight = item.weight or 0
                                dump[k] = item
                                count += 1
                            end
                        end
                    end

                    if table.type(dump) ~= 'empty' then
                        local filePath = 'shared/itemlist.lua'
                        local fileContent = LoadResourceFile('codem-inventory', filePath)

                        if not fileContent then
                            print("ERROR: Unable to read the file content.")
                            return
                        end
                        fileContent = fileContent:gsub("Config.Itemlist = {$", "")

                        fileContent = fileContent:gsub("}$", "")

                        local itemFormat = [[
                    [%q] = {
                        name = %q,
                        label = %q,
                        weight = %s,
                        closeafteruse = %s,
                        description = %q,
                        unique = %s,
                        type = %q,

                    },
                    ]]
                        local itemsContent = ""
                        itemsContent = [[
                        ["cph4"] = {
                            name = "cph4",
                            label = "C.P.H.4",
                            unique = false,
                            weight = 500,
                            description = "CPH 4",
                            type = "craft",
                            closeafteruse = true,
                            secondsforcraft = 50,
                            requiredItems = {
                                { name = "water",     count = 1 },
                                { name = "calcium",   count = 1 },
                                { name = "hydrogen",  count = 1 },
                                { name = "potassium", count = 1 },
                                { name = "beaker",    count = 1 },
                            },
                        },
                        ["weaponlicense"] = {
                            name = "weaponlicense",
                            label = "Weapon License",
                            weight = 0,
                            closeafteruse = true,
                            description = "Weapon License",
                            unique = true,
                            type = "item",

                        },
                        ["cash"] = {
                            name = "cash",
                            label = "Cash",
                            weight = 0,
                            closeafteruse = true,
                            description = "Money",
                            unique = false,
                            detachinfo = true,
                            type = "item",
                        },
                        ["id_card"] = {
                            name = "id_card",
                            label = "Citizen Card",
                            unique = true,
                            weight = 100,
                            description = "Citizen Card",
                            type = "item",
                            closeafteruse = false
                        },
                        ["driver_license"] = {
                            name = "driver_license",
                            label = "Driver License",
                            unique = true,
                            weight = 100,
                            description = "Citizen Card",
                            type = "item",
                            closeafteruse = false
                        },
                        ["pistol_ammo"] = {
                            name = "pistol_ammo",
                            label = "Pistol Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },
                        ["smg_ammo"] = {
                            name = "smg_ammo",
                            label = "SMG Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },
                        ["shotgun_ammo"] = {
                            name = "shotgun_ammo",
                            label = "Shotgun Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },
                        ["rifle_ammo"] = {
                            name = "rifle_ammo",
                            label = "Rifle Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },
                        ["mg_ammo"] = {
                            name = "mg_ammo",
                            label = "MG Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },

                        ["sniper_ammo"] = {
                            name = "sniper_ammo",
                            label = "Sniper Ammo",
                            unique = false,
                            weight = 0,
                            description = "Ammo",
                            type = "ammo",
                            closeafteruse = true
                        },
                        ["weapon_pistol"] = {
                            name = "weapon_pistol",
                            label = "Pistol",
                            unique = true,
                            weight = 500,
                            description = "Pistol",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_combatpistol"] = {
                            name = "weapon_combatpistol",
                            label = "Combat Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_appistol"] = {
                            name = "weapon_appistol",
                            label = "AP Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_pistol50"] = {
                            name = "weapon_pistol50",
                            label = "Pistol.50",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_revolver"] = {
                            name = "weapon_revolver",
                            label = "Revolver",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_snspistol"] = {
                            name = "weapon_snspistol",
                            label = "SNS Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_heavypistol"] = {
                            name = "weapon_heavypistol",
                            label = "Heavy Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_revolver_mk2"] = {
                            name = "weapon_revolver_mk2",
                            label = "Revolver MK2",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_pistol_mk2"] = {
                            name = "weapon_pistol_mk2",
                            label = "Pistol MK2",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },


                        ["weapon_vintagepistol"] = {
                            name = "weapon_vintagepistol",
                            label = "Vintage Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_ceramicpistol"] = {
                            name = "weapon_ceramicpistol",
                            label = "Ceramic Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_ceramicpistol"] = {
                            name = "weapon_ceramicpistol",
                            label = "Ceramic Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["pistol_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_microsmg"] = {
                            name = "weapon_microsmg",
                            label = "Micro SMG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_smg"] = {
                            name = "weapon_smg",
                            label = "SMG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_assaultsmg"] = {
                            name = "weapon_assaultsmg",
                            label = "Assault SMG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_minismg"] = {
                            name = "weapon_minismg",
                            label = "Mini SMG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_smg_mk2"] = {
                            name = "weapon_smg_mk2",
                            label = "SMG MK II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_machinepistol"] = {
                            name = "weapon_machinepistol",
                            label = "Machine Pistol",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_combatpdw"] = {
                            name = "weapon_combatpdw",
                            label = "Combat PDW",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["smg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        --
                        ["weapon_pumpshotgun"] = {
                            name = "weapon_pumpshotgun",
                            label = "Pump Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_sawnoffshotgun"] = {
                            name = "weapon_sawnoffshotgun",
                            label = "Sawed-Off Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_assaultshotgun"] = {
                            name = "weapon_assaultshotgun",
                            label = "Assault Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_bullpupshotgun"] = {
                            name = "weapon_bullpupshotgun",
                            label = "Bullpup Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_pumpshotgun_mk2"] = {
                            name = "weapon_pumpshotgun_mk2",
                            label = "Pump Shotgun Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_heavyshotgun"] = {
                            name = "weapon_heavyshotgun",
                            label = "Heavy Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_combatshotgun"] = {
                            name = "weapon_combatshotgun",
                            label = "Combat Shotgun",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["shotgun_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_assaultrifle"] = {
                            name = "weapon_assaultrifle",
                            label = "Assault Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_carbinerifle"] = {
                            name = "weapon_carbinerifle",
                            label = "Carbine Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_advancedrifle"] = {
                            name = "weapon_advancedrifle",
                            label = "Advanced Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_specialcarbine"] = {
                            name = "weapon_specialcarbine",
                            label = "Special Carbine",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_bullpuprifle"] = {
                            name = "weapon_bullpuprifle",
                            label = "Bullpup Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_bullpuprifle_mk2"] = {
                            name = "weapon_bullpuprifle_mk2",
                            label = "Bullpup Rifle Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_specialcarbine_mk2"] = {
                            name = "weapon_specialcarbine_mk2",
                            label = "Special Carbine Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_assaultrifle_mk2"] = {
                            name = "weapon_assaultrifle_mk2",
                            label = "Assault Rifle Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_carbinerifle_mk2"] = {
                            name = "weapon_carbinerifle_mk2",
                            label = "Carbine Rifle Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_compactrifle"] = {
                            name = "weapon_compactrifle",
                            label = "Compact Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_militaryrifle"] = {
                            name = "weapon_militaryrifle",
                            label = "Military Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["rifle_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_mg"] = {
                            name = "weapon_mg",
                            label = "MG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["mg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_combatmg"] = {
                            name = "weapon_combatmg",
                            label = "Combat MG",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["mg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_combatmg_mk2"] = {
                            name = "weapon_combatmg_mk2",
                            label = "Combat MG MK II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["mg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_gusenberg"] = {
                            name = "weapon_gusenberg",
                            label = "Gusenberg Sweeper",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["mg_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_sniperrifle"] = {
                            name = "weapon_sniperrifle",
                            label = "Sniper Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_heavysniper"] = {
                            name = "weapon_heavysniper",
                            label = "Heavy Sniper",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["weapon_flashlight"] = {
                            name = "weapon_flashlight",
                            label = "Flashlight",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = nil,
                            closeafteruse = true
                        },
                        ["weapon_heavysniper_mk2"] = {
                            name = "weapon_heavysniper_mk2",
                            label = "Heavy Sniper Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_marksmanrifle"] = {
                            name = "weapon_marksmanrifle",
                            label = "Marksman Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_marksmanrifle_mk2"] = {
                            name = "weapon_marksmanrifle_mk2",
                            label = "Marksman Rifle Mk II",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },

                        ["weapon_precisionrifle"] = {
                            name = "weapon_precisionrifle",
                            label = "Precision Rifle",
                            unique = true,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            ammotype = {
                                ["sniper_ammo"] = 12,
                            },
                            closeafteruse = true
                        },
                        ["pistol_defaultclip"] = {
                            name = "pistol_defaultclip",
                            label = "Pistol Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_extendedclip"] = {
                            name = "pistol_extendedclip",
                            label = "Pistol Ext. Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["flashlight"] = {
                            name = "flashlight",
                            label = "Flashligh",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_defaultrounds"] = {
                            name = "revolver_defaultrounds",
                            label = "Revolver D. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_tracerrounds"] = {
                            name = "revolver_tracerrounds",
                            label = "Revolver T. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_incendiaryrounds"] = {
                            name = "revolver_incendiaryrounds",
                            label = "Revolver I. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_hollowpointrounds"] = {
                            name = "revolver_hollowpointrounds",
                            label = "Revolver HP. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_fullmetaljacketrounds"] = {
                            name = "revolver_fullmetaljacketrounds",
                            label = "Revolver FMJ",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_holographicsight"] = {
                            name = "revolver_holographicsight",
                            label = "Holographic Sight",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["revolver_smallscope"] = {
                            name = "revolver_smallscope",
                            label = "Revolver Small Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_tracerrounds"] = {
                            name = "pistol_tracerrounds",
                            label = "Pistol T. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_incendiaryrounds"] = {
                            name = "pistol_incendiaryrounds",
                            label = "Pistol I. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_hollowpointrounds"] = {
                            name = "pistol_hollowpointrounds",
                            label = "Pistol HP. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_fullmetaljacketrounds"] = {
                            name = "pistol_fullmetaljacketrounds",
                            label = "Pistol FMJ",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["pistol_mountedscope"] = {
                            name = "pistol_mountedscope",
                            label = "Pistol Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_defaultclip"] = {
                            name = "smg_defaultclip",
                            label = "Default Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_extendedclip"] = {
                            name = "smg_extendedclip",
                            label = "Extended Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_scope"] = {
                            name = "smg_scope",
                            label = "SMG Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_suppressor"] = {
                            name = "smg_suppressor",
                            label = "SMG Supp.",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_incendiaryrounds"] = {
                            name = "smg_incendiaryrounds",
                            label = "SMG I. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_fmj"] = {
                            name = "smg_fmj",
                            label = "SMG FMJ",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_hollowpoint"] = {
                            name = "smg_hollowpoint",
                            label = "Hollowpoint",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["holographic"] = {
                            name = "holographic",
                            label = "Holographic",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["smg_drummagazine"] = {
                            name = "smg_drummagazine",
                            label = "Drum Magazine",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["shotgun_suppressor"] = {
                            name = "shotgun_suppressor",
                            label = "Shotgun Supp.",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["shotgun_defaultclip"] = {
                            name = "shotgun_defaultclip",
                            label = "Shotgun Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["shotgun_extendedclip"] = {
                            name = "shotgun_extendedclip",
                            label = "Extended Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["shotgun_drummagazine"] = {
                            name = "shotgun_drummagazine",
                            label = "Drum Magazine",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_scope"] = {
                            name = "rifle_scope",
                            label = "Rifle Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_suppressor"] = {
                            name = "rifle_suppressor",
                            label = "Rifle Supp.",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_defaultclip"] = {
                            name = "rifle_defaultclip",
                            label = "Rifle Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_extendedclip"] = {
                            name = "rifle_extendedclip",
                            label = "Extended Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_drummagazine"] = {
                            name = "rifle_drummagazine",
                            label = "Drum Magazine",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_tracerrounds"] = {
                            name = "rifle_tracerrounds",
                            label = "Rifle T. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_armorpiercing"] = {
                            name = "rifle_armorpiercing",
                            label = "Rifle A. Piercing",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_incendiaryrounds"] = {
                            name = "rifle_incendiaryrounds",
                            label = "Rifle I. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_fmj"] = {
                            name = "rifle_fmj",
                            label = "Rifle FMJ",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_smallscope"] = {
                            name = "rifle_smallscope",
                            label = "Small Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_mediumscope"] = {
                            name = "rifle_mediumscope",
                            label = "Medium Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle7"] = {
                            name = "muzzle7",
                            label = "Muzzle 7",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle6"] = {
                            name = "muzzle6",
                            label = "Muzzle 6",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle5"] = {
                            name = "muzzle5",
                            label = "Muzzle 5",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle4"] = {
                            name = "muzzle4",
                            label = "Muzzle 4",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle3"] = {
                            name = "muzzle3",
                            label = "Muzzle 3",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle2"] = {
                            name = "muzzle2",
                            label = "Muzzle 2",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["muzzle1"] = {
                            name = "muzzle1",
                            label = "Muzzle 1",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["rifle_largescope"] = {
                            name = "rifle_largescope",
                            label = "Large Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_defaultclip"] = {
                            name = "machine_defaultclip",
                            label = "Default Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_extendedclip"] = {
                            name = "machine_extendedclip",
                            label = "Extended Clip",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_scope"] = {
                            name = "machine_scope",
                            label = "Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_tracerrounds"] = {
                            name = "machine_tracerrounds",
                            label = "Tracer Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_incendiaryrounds"] = {
                            name = "machine_incendiaryrounds",
                            label = "Incen. Rounds",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_armorpiercing"] = {
                            name = "machine_armorpiercing",
                            label = "Armor Piercing",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_fmj"] = {
                            name = "machine_fmj",
                            label = "Machine Gun FMJ",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_mediumscope"] = {
                            name = "machine_mediumscope",
                            label = "M. Gun Scope",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["machine_largescope"] = {
                            name = "machine_largescope",
                            label = "M. Gun Scope (L)",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },
                        ["weapon_stungun"] = {
                            name = "weapon_stungun",
                            label = "Stungun",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "weapon",
                            closeafteruse = true
                        },
                        ["pistol_suppressor"] = {
                            name = "pistol_suppressor",
                            label = "Suppressor",
                            unique = false,
                            weight = 500,
                            description = "",
                            type = "item",
                            closeafteruse = true
                        },

                    ]]

                        for _, item in pairs(dump) do
                            if not ItemList[item.name] then
                                local itemStr = itemFormat:format(item.name, item.name, item.label, item.weight,
                                    item.shouldClose,
                                    item.description or 'nil', item.unique or false, item.type or false)
                                itemStr = itemStr:gsub('[%s]-[%w]+ = "?nil"?,?', '')
                                itemsContent = itemsContent .. itemStr
                                ItemList[item.name] = item
                            end
                        end

                        fileContent = "Config.Itemlist = {\n" .. itemsContent .. "\n}"

                        SaveResourceFile('codem-inventory', filePath, fileContent, -1)
                        print('Restart Resource to load the items.')
                        print(count, 'items have been copied')
                    end
                end
            end
            local count = 0

            Wait(1000)

            for _ in pairs(ItemList) do
                count += 1
            end

            print((' loaded %d items'):format(count))
        end
    end)
end)
