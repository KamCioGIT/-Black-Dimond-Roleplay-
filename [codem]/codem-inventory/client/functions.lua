HSN = {}
HSN.Functions = {}
local isdead = false
local Framework = GetFrameworkObject()
local hotbar = false

CreateThread(function()
    while not jsReady do
        if NetworkIsSessionStarted() then
            SendNUIMessage({
                action = 'NuiCheck',
                slot = Config.Slots.Player
            })
        end
        Wait(2000)
    end
end)

RegisterNuiCallback("uiload", function(data, cb)
    jsReady = true
    print('CLIENT INVENTORY LOADED')
    cb("ok")
end)

Citizen.CreateThread(function()
    while true do
        SetPedConfigFlag(PlayerPedId(), 48, true)
        Citizen.Wait(10)
    end
end)


RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function(PlayerData)
    while not jsReady do
        Citizen.Wait(5)
    end
    PlayerData = Framework.Functions.GetPlayerData()
    JobData.name = PlayerData.job.name
    JobData.grade = PlayerData.job.grade.level
    TriggerServerEvent("codem-inventory:InitInventory")
    InitAttachmentList()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer, isNew, skin)
    while not jsReady do
        Citizen.Wait(5)
    end
    -- ESX.PlayerData = xPlayer
    JobData.name = xPlayer.job.name
    JobData.grade = xPlayer.job.grade
    TriggerServerEvent("codem-inventory:InitInventory")
    InitAttachmentList()
end)



Citizen.CreateThread(function()
    local slots = {
        [1] = 157,
        [2] = 158,
        [3] = 160,
        [4] = 164,
        [5] = 165
    }
    for k, v in pairs(slots) do
        RegisterCommand("slot" .. k, function()
            TriggerServerEvent("codem-inventory:UseItem", k)
        end)
        RegisterKeyMapping("slot" .. k, "Use Item From Slot - " .. k, 'keyboard', k)
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(1500)
    RegisterKeyMapping(Config.Nui.command, Config.Nui.text, 'keyboard', Config.Nui.key)
end)

RegisterCommand(Config.Nui.command, function()
    OpenInventory()
end, false)

Citizen.CreateThread(function()
    if Config.Hotbar.enable then
        RegisterCommand(Config.Hotbar.command, function()
            hotbar = not hotbar
            EnableHotbar(hotbar)
        end, false)
        RegisterKeyMapping(Config.Hotbar.command, Config.Hotbar.text, 'keyboard', Config.Hotbar.key)
    end
end)

EnableHotbar = function(enable)
    while not jsReady do
        Citizen.Wait(5)
    end
    local hotbarinventory = {}
    for i = 1, 5 do
        hotbarinventory[tostring(i)] = PlayerInventory[tostring(i)]
    end
    SendNUIMessage({
        action = 'hotbar',
        enable = enable,
        inventory = hotbarinventory
    })
end

OpenInventory = function()
    if not HSN.CanAccesInventory() then return end
    local ped = PlayerPedId()
    local inveh = IsPedInAnyVehicle(ped, false)
    local gloveboxveh = nil
    if (inveh) then
        local plate = GetVehicleNumberPlateText(GetVehiclePedIsIn(ped, false))
        gloveboxveh = GetVehiclePedIsIn(ped)
        InGlovebox = plate
    else
        InGlovebox = nil
    end
    local vehicle, distance = HSN.Functions.GetClosestVehicle()
    -- if vehicle and distance <= 2 then
    --     if GetVehicleDoorLockStatus(vehicle) < 2 then
    --         InTrunk = GetVehicleNumberPlateText(vehicle)
    --         curvehicle = vehicle
    --     else
    --         curvehicle = nil
    --         InTrunk = nil
    --         return
    --     end
    -- else
    --     curvehicle = nil
    --     InTrunk = nil
    -- end


    if vehicle ~= 0 and vehicle ~= nil then
        local pos = GetEntityCoords(ped)
        local dimensionMin, dimensionMax = GetModelDimensions(GetEntityModel(vehicle))
        local trunkpos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, (dimensionMin.y), 0.0)
        if (IsBackEngine(GetEntityModel(vehicle))) then
            trunkpos = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, (dimensionMax.y), 0.0)
        end
        if #(pos - trunkpos) < 1.5 and not IsPedInAnyVehicle(ped) then
            if GetVehicleDoorLockStatus(vehicle) < 2 then
                InTrunk = GetVehicleNumberPlateText(vehicle)
                curvehicle = vehicle
            end
        else
            curvehicle = nil
            InTrunk = nil
        end
    else
        curvehicle = nil
        InTrunk = nil
    end

    if InDropCoord then
        CurrentInventoryData = { type = "Drop", id = InDropCoord.id }
        TriggerServerEvent("codem-inventory:OpenInventory", "drop", InDropCoord.id)
    elseif InGlovebox then
        local vehicleclass    = GetVehicleClass(gloveboxveh)
        local maxweight, slot = GetTrunkOrGlovebox(vehicleclass, 'glovebox')
        CurrentInventoryData  = { type = "Glovebox", id = InGlovebox }
        TriggerServerEvent("codem-inventory:OpenInventory", "glovebox", InGlovebox, maxweight, slot) -- calculate glovebox
    elseif InTrunk then
        local vehicleclass = GetVehicleClass(curvehicle)
        local maxweight, slot = GetTrunkOrGlovebox(vehicleclass, 'trunk')
        CurrentInventoryData = { type = "Trunk", id = InTrunk }
        TriggerServerEvent("codem-inventory:OpenInventory", "trunk", InTrunk, maxweight, slot) -- calculate trunk
        SetVehicleDoorOpen(curvehicle, 5, false, false)
    else
        TriggerServerEvent("codem-inventory:OpenInventory", "unknown")
    end
end


HSN.Functions.GetClosestPlayer = function()
    local players = GetActivePlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index, value in ipairs(players) do
        local target = GetPlayerPed(value)
        if (target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'],
                plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if (closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end

    return closestPlayer, closestDistance
end

HSN.Functions.GetClosestVehicle = function()
    local ped = PlayerPedId()
    local vehicles = GetGamePool('CVehicle')
    local closestDistance = -1
    local closestVehicle = -1
    coords = GetEntityCoords(ped)
    for i = 1, #vehicles, 1 do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)

        if closestDistance == -1 or closestDistance > distance then
            closestVehicle = vehicles[i]
            closestDistance = distance
        end
    end
    return closestVehicle, closestDistance
end

HSN.Functions.GetDistanceBetweenPlayers = function(targetid)
    local targetped = GetPlayerPed(GetPlayerFromServerId(targetid))
    local targetpedcoords = GetEntityCoords(targetped)
    local srcpedcoords = GetEntityCoords(PlayerPedId())
    local diff = #(targetpedcoords - srcpedcoords)
    if diff >= 6.0 then
        return false
    end
    return true
end

HSN.Functions.GetClosestPlayers = function()
    local players = {}
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    for _, player in ipairs(GetActivePlayers()) do
        local target = GetPlayerPed(player)
        if target ~= ped then
            local targetCoords = GetEntityCoords(target)
            local distance = #(pedCoords - targetCoords)
            if distance < 3.5 then
                table.insert(players, {
                    id = GetPlayerServerId(player),
                    name = HSN.Functions.GetPlayerCharacterName(GetPlayerServerId(tonumber(player))),
                    --distance = distance,
                })
            end
        end
    end
    return players
end

HSN.Functions.GetPlayerCharacterName = function(playerId)
    local characterName = nil
    if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
        Framework.Functions.TriggerCallback("codem-inventory:GetName", function(name)
            characterName = name
        end, playerId)
    elseif Config.Framework == "esx" then
        Framework.TriggerServerCallback("codem-inventory:GetName", function(name)
            characterName = name
        end, tonumber(playerId))
    end
    while characterName == nil do
        Citizen.Wait(50)
    end
    return characterName
end

HSN.IsPlayerInJob = function(playerjob, playergrade, data)
    if (type(data) == "table") then
        for k, v in pairs(data) do
            for i, j in pairs(v) do
                if playerjob == k and playergrade >= j then
                    return true
                end
            end
        end
    else
        return true
    end
    return false
end

RegisterNetEvent("codem-inventory:UseAmmo")
AddEventHandler("codem-inventory:UseAmmo", function(name, count, itemslot)
    local ped = PlayerPedId()
    if next(CurrentWeaponData) then
        if Config.Itemlist[CurrentWeaponData.name] then
            if Config.Itemlist[CurrentWeaponData.name].ammotype then
                for k, v in pairs(Config.Itemlist[CurrentWeaponData.name].ammotype) do
                    if k == name then
                        local total = GetAmmoInPedWeapon(ped, CurrentWeaponData.name)
                        local _, maxAmmo = GetMaxAmmo(ped, CurrentWeaponData.name)
                        if total < maxAmmo then
                            if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
                                Framework.Functions.Progressbar("inv-ammo", Config.Translate["ammoadding"], 5000, false,
                                    true, {
                                        disableMovement = false,
                                        disableCarMovement = false,
                                        disableMouse = false,
                                        disableCombat = true,
                                    }, {
                                        animDict = "",
                                        anim = "",
                                        flags = 1,
                                    }, {}, {}, function() -- Done
                                        ClearPedTasks(ped)
                                        Framework.Functions.TriggerCallback("codem-inventory:SetWeaponAmmo",
                                            function(ammo)
                                                Framework.Functions.Notify(Config.Translate["ammoadded"], 'success')
                                                SetAmmoInClip(ped, weapon, 0)
                                                SetPedAmmo(ped, CurrentWeaponData.name, tonumber(ammo))
                                                TaskReloadWeapon(ped)
                                            end, CurrentWeaponData, name, count, itemslot)
                                    end, function() -- Cancel
                                        ClearPedTasks(ped)
                                    end)
                            elseif Config.Framework == "esx" then
                                Framework.TriggerServerCallback("codem-inventory:SetWeaponAmmo", function(ammo)
                                    SetAmmoInClip(ped, weapon, 0)
                                    SetPedAmmo(ped, CurrentWeaponData.name, ammo)
                                    TaskReloadWeapon(ped)
                                end, CurrentWeaponData, name, count, itemslot)
                            end
                            -- SetAmmoInClip(ped, weapon, 0)
                            -- SetPedAmmo(ped, CurrentWeaponData.name, 40)
                            -- TaskReloadWeapon(ped)
                            --TriggerServerEvent("codem-inventory:UpdateWeaponAmmoServer", CurrentWeaponData, count,name,  itemslot)
                        else
                            Config.SendMessage(Config.Translate["maxammo"], true, "client")
                        end
                    end
                end
            end
        else
            Config.SendMessage(Config.Translate["weaponcannotfind"], true, "client")
        end
    else
        Config.SendMessage(Config.Translate["weaponcannotfind"], true, "client")
    end
end)


function Search()
    local closestPlayer, closestDistance = HSN.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local targetplayerped = GetPlayerPed(closestPlayer)
        if IsPedArmed(ped, 4) then
            if IsEntityPlayingAnim(targetplayerped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(targetplayerped, "mp_arresting", "idle", 3) or IsPedDeadOrDying(targetplayerped) then
                TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
            else
                Config.SendMessage(Config.Translate["raisehands"], true, "client")
            end
        else
            Config.SendMessage(Config.Translate["requireweapon"], true, "client")
        end
    else
        Config.SendMessage(Config.Translate["playernotfound"], true, "client")
    end
end

function SearchDead()
    local closestPlayer, closestDistance = HSN.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local targetplayerped = GetPlayerPed(closestPlayer)
        if IsPedArmed(ped, 4) then
            if (Config.Framework == "new-qb" or Config.Framework == "old-qb") then
                Framework.Functions.TriggerCallback("codem-inventory:CheckIsPlayerDead", function(isDead)
                    if isDead then
                        TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
                    else
                        Config.SendMessage(Config.Translate["deadcheck"], true, "client")
                    end
                end, GetPlayerServerId(closestPlayer))
            else
                if (IsPedDeadOrDying(targetplayerped) or IsEntityDead(targetplayerped)) then
                    TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
                else
                    Config.SendMessage(Config.Translate["deadcheck"], true, "client")
                end
            end
        else
            Config.SendMessage(Config.Translate["requireweapon"], true, "client")
        end
    else
        Config.SendMessage(Config.Translate["playernotfound"], true, "client")
    end
end

RegisterNetEvent("codem-inventory:DeadLootEvent")
AddEventHandler("codem-inventory:DeadLootEvent", function()
    local closestPlayer, closestDistance = HSN.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local targetplayerped = GetPlayerPed(closestPlayer)
        if IsPedArmed(ped, 4) then
            if (Config.Framework == "new-qb" or Config.Framework == "old-qb") then
                Framework.Functions.TriggerCallback("codem-inventory:CheckIsPlayerDead", function(isDead)
                    if isDead then
                        TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
                    else
                        Config.SendMessage(Config.Translate["deadcheck"], true, "client")
                    end
                end, GetPlayerServerId(closestPlayer))
            else
                if (IsPedDeadOrDying(targetplayerped) or IsEntityDead(targetplayerped)) then
                    TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
                else
                    Config.SendMessage(Config.Translate["deadcheck"], true, "client")
                end
            end
        else
            Config.SendMessage(Config.Translate["requireweapon"], true, "client")
        end
    else
        Config.SendMessage(Config.Translate["playernotfound"], true, "client")
    end
end)

RegisterNetEvent("codem-inventory:robevent")
AddEventHandler("codem-inventory:robevent", function()
    local closestPlayer, closestDistance = HSN.Functions.GetClosestPlayer()
    local ped = PlayerPedId()
    if closestPlayer ~= -1 and closestDistance <= 3.0 then
        local targetplayerped = GetPlayerPed(closestPlayer)
        if IsPedArmed(ped, 4) then
            if IsEntityPlayingAnim(targetplayerped, "missminuteman_1ig_2", "handsup_base", 3) or IsEntityPlayingAnim(targetplayerped, "mp_arresting", "idle", 3) or IsPedDeadOrDying(targetplayerped) then
                TriggerServerEvent("codem-inventory:OpenInventory", "player", GetPlayerServerId(closestPlayer))
            else
                Config.SendMessage(Config.Translate["raisehands"], true, "client")
            end
        else
            Config.SendMessage(Config.Translate["requireweapon"], true, "client")
        end
    else
        Config.SendMessage(Config.Translate["playernotfound"], true, "client")
    end
end)

HSN.CanAccesInventory = function()
    local ped = PlayerPedId()
    -- if IsEntityDead(ped) then
    --     return false
    -- end
    if Config.Framework == "new-qb" or Config.Framework == "old-qb" then
        local isDoingSomething = exports["progressbar"]:isDoingSomething()
        if isDoingSomething then return false end
        local PlayerData = Framework.Functions.GetPlayerData()
        if PlayerData.metadata["isdead"] or PlayerData.metadata["inlaststand"] or PlayerData.metadata["ishandcuffed"] then
            return false
        end
    end

    -- example
    -- local codemphoneisusing = exports["codem-phone"]:InUse()
    -- if codemphoneisusing then
    --    print("you can not use this inventory while using phone!")
    --    return false
    -- end
    --
    return true
end

variations = {
    jackets = { male = {}, female = {} },
    hair = { male = {}, female = {} },
    bags = { male = {}, female = {} },
    visor = { male = {}, female = {} },
    gloves = {
        male = {
            [16] = 4,
            [17] = 4,
            [18] = 4,
            [19] = 0,
            [20] = 1,
            [21] = 2,
            [22] = 4,
            [23] = 5,
            [24] = 6,
            [25] = 8,
            [26] = 11,
            [27] = 12,
            [28] = 14,
            [29] = 15,
            [30] = 0,
            [31] = 1,
            [32] = 2,
            [33] = 4,
            [34] = 5,
            [35] = 6,
            [36] = 8,
            [37] = 11,
            [38] = 12,
            [39] = 14,
            [40] = 15,
            [41] = 0,
            [42] = 1,
            [43] = 2,
            [44] = 4,
            [45] = 5,
            [46] = 6,
            [47] = 8,
            [48] = 11,
            [49] = 12,
            [50] = 14,
            [51] = 15,
            [52] = 0,
            [53] = 1,
            [54] = 2,
            [55] = 4,
            [56] = 5,
            [57] = 6,
            [58] = 8,
            [59] = 11,
            [60] = 12,
            [61] = 14,
            [62] = 15,
            [63] = 0,
            [64] = 1,
            [65] = 2,
            [66] = 4,
            [67] = 5,
            [68] = 6,
            [69] = 8,
            [70] = 11,
            [71] = 12,
            [72] = 14,
            [73] = 15,
            [74] = 0,
            [75] = 1,
            [76] = 2,
            [77] = 4,
            [78] = 5,
            [79] = 6,
            [80] = 8,
            [81] = 11,
            [82] = 12,
            [83] = 14,
            [84] = 15,
            [85] = 0,
            [86] = 1,
            [87] = 2,
            [88] = 4,
            [89] = 5,
            [90] = 6,
            [91] = 8,
            [92] = 11,
            [93] = 12,
            [94] = 14,
            [95] = 15,
            [96] = 4,
            [97] = 4,
            [98] = 4,
            [99] = 0,
            [100] = 1,
            [101] = 2,
            [102] = 4,
            [103] = 5,
            [104] = 6,
            [105] = 8,
            [106] = 11,
            [107] = 12,
            [108] = 14,
            [109] = 15,
            [110] = 4,
            [111] = 4,
            [115] = 112,
            [116] = 112,
            [117] = 112,
            [118] = 112,
            [119] = 112,
            [120] = 112,
            [121] = 112,
            [122] = 113,
            [123] = 113,
            [124] = 113,
            [125] = 113,
            [126] = 113,
            [127] = 113,
            [128] = 113,
            [129] = 114,
            [130] = 114,
            [131] = 114,
            [132] = 114,
            [133] = 114,
            [134] = 114,
            [135] = 114,
            [136] = 15,
            [137] = 15,
            [138] = 0,
            [139] = 1,
            [140] = 2,
            [141] = 4,
            [142] = 5,
            [143] = 6,
            [144] = 8,
            [145] = 11,
            [146] = 12,
            [147] = 14,
            [148] = 112,
            [149] = 113,
            [150] = 114,
            [151] = 0,
            [152] = 1,
            [153] = 2,
            [154] = 4,
            [155] = 5,
            [156] = 6,
            [157] = 8,
            [158] = 11,
            [159] = 12,
            [160] = 14,
            [161] = 112,
            [162] = 113,
            [163] = 114,
            [165] = 4,
            [166] = 4,
            [167] = 4,
            [168] = 4,
            [170] = 15,
            [171] = 0,
            [172] = 1,
            [173] = 2,
            [174] = 4,
            [175] = 5,
            [176] = 6,
            [177] = 8,
            [178] = 11,
            [179] = 12,
            [180] = 14,
            [181] = 112,
            [182] = 113,
            [183] = 114,
            [185] = 184,
            [186] = 184,
            [187] = 184,
            [188] = 184,
            [189] = 185,
            [190] = 184,
            [191] = 184,
            [192] = 184,
            [193] = 184,
            [194] = 184,
        },
        female = {
            [16] = 11,
            [17] = 3,
            [18] = 3,
            [19] = 3,
            [20] = 0,
            [21] = 1,
            [22] = 2,
            [23] = 3,
            [24] = 4,
            [25] = 5,
            [26] = 6,
            [27] = 7,
            [28] = 9,
            [29] = 11,
            [30] = 12,
            [31] = 14,
            [32] = 15,
            [33] = 0,
            [34] = 1,
            [35] = 2,
            [36] = 3,
            [37] = 4,
            [38] = 5,
            [39] = 6,
            [40] = 7,
            [41] = 9,
            [42] = 11,
            [43] = 12,
            [44] = 14,
            [45] = 15,
            [46] = 0,
            [47] = 1,
            [48] = 2,
            [49] = 3,
            [50] = 4,
            [51] = 5,
            [52] = 6,
            [53] = 7,
            [54] = 9,
            [55] = 11,
            [56] = 12,
            [57] = 14,
            [58] = 15,
            [59] = 0,
            [60] = 1,
            [61] = 2,
            [62] = 3,
            [63] = 4,
            [64] = 5,
            [65] = 6,
            [66] = 7,
            [67] = 9,
            [68] = 11,
            [69] = 12,
            [70] = 14,
            [71] = 15,
            [72] = 0,
            [73] = 1,
            [74] = 2,
            [75] = 3,
            [76] = 4,
            [77] = 5,
            [78] = 6,
            [79] = 7,
            [80] = 9,
            [81] = 11,
            [82] = 12,
            [83] = 14,
            [84] = 15,
            [85] = 0,
            [86] = 1,
            [87] = 2,
            [88] = 3,
            [89] = 4,
            [90] = 5,
            [91] = 6,
            [92] = 7,
            [93] = 9,
            [94] = 11,
            [95] = 12,
            [96] = 14,
            [97] = 15,
            [98] = 0,
            [99] = 1,
            [100] = 2,
            [101] = 3,
            [102] = 4,
            [103] = 5,
            [104] = 6,
            [105] = 7,
            [106] = 9,
            [107] = 11,
            [108] = 12,
            [109] = 14,
            [110] = 15,
            [111] = 3,
            [112] = 3,
            [113] = 3,
            [114] = 0,
            [115] = 1,
            [116] = 2,
            [117] = 3,
            [118] = 4,
            [119] = 5,
            [120] = 6,
            [121] = 7,
            [122] = 9,
            [123] = 11,
            [124] = 12,
            [125] = 14,
            [126] = 15,
            [127] = 3,
            [128] = 3,
            [132] = 129,
            [133] = 129,
            [134] = 129,
            [135] = 129,
            [136] = 129,
            [137] = 129,
            [138] = 129,
            [139] = 130,
            [140] = 130,
            [141] = 130,
            [142] = 130,
            [143] = 130,
            [144] = 130,
            [145] = 130,
            [146] = 131,
            [147] = 131,
            [148] = 131,
            [149] = 131,
            [150] = 131,
            [151] = 131,
            [152] = 131,
            [154] = 153,
            [155] = 153,
            [156] = 153,
            [157] = 153,
            [158] = 153,
            [159] = 153,
            [160] = 153,
            [162] = 161,
            [163] = 161,
            [164] = 161,
            [165] = 161,
            [166] = 161,
            [167] = 161,
            [168] = 161,
            [169] = 15,
            [170] = 15,
            [171] = 0,
            [172] = 1,
            [173] = 2,
            [174] = 3,
            [175] = 4,
            [176] = 5,
            [177] = 6,
            [178] = 7,
            [179] = 9,
            [180] = 11,
            [181] = 12,
            [182] = 14,
            [183] = 129,
            [184] = 130,
            [185] = 131,
            [186] = 153,
            [187] = 0,
            [188] = 1,
            [189] = 2,
            [190] = 3,
            [191] = 4,
            [192] = 5,
            [193] = 6,
            [194] = 7,
            [195] = 9,
            [196] = 11,
            [197] = 12,
            [198] = 14,
            [199] = 129,
            [200] = 130,
            [201] = 131,
            [202] = 153,
            [203] = 161,
            [204] = 161,
            [206] = 3,
            [207] = 3,
            [208] = 3,
            [209] = 3,
            [211] = 15,
            [212] = 0,
            [213] = 1,
            [214] = 2,
            [215] = 3,
            [216] = 4,
            [217] = 5,
            [218] = 6,
            [219] = 7,
            [220] = 9,
            [221] = 11,
            [222] = 12,
            [223] = 14,
            [224] = 129,
            [225] = 130,
            [226] = 131,
            [227] = 153,
            [228] = 161,
            [230] = 229,
            [231] = 229,
            [232] = 229,
            [233] = 229,
            [234] = 229,
            [235] = 229,
            [236] = 229,
            [237] = 229,
            [238] = 229,
            [239] = 229,
        }
    }
}
drawables = {
    ["Top"] = {
        Drawable = 11,
        Table = variations.jackets,
        Emote = { Dict = "missmic4", Anim = "michael_tux_fidget", Move = 51, Dur = 1500 }
    },
    ["Gloves"] = {
        Drawable = 3,
        Table = variations.gloves,
        Remember = true,
        Emote = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
    },
    ["Shoes"] = {
        Drawable = 6,
        Table = { Standalone = true, male = 34, female = 35 },
        Emote = { Dict = "random@domestic", Anim = "pickup_low", Move = 0, Dur = 1200 }
    },
    ["Neck"] = {
        Drawable = 7,
        Table = { Standalone = true, male = 0, female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Dur = 2100 }
    },
    ["Vest"] = {
        Drawable = 9,
        Table = { Standalone = true, male = 0, female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
    ["Bag"] = {
        Drawable = 5,
        Table = variations.bags,
        Emote = { Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Dur = 1600 }
    },
    ["Mask"] = {
        Drawable = 1,
        Table = { Standalone = true, male = 0, female = 0 },
        Emote = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 800 }
    },
    ["hair"] = {
        Drawable = 2,
        Table = variations.hair,
        Remember = true,
        Emote = { Dict = "clothingtie", Anim = "check_out_a", Move = 51, Dur = 2000 }
    },
}

Extras = {
    ["Shirt"] = {
        Drawable = 11,
        Table = {
            Standalone = true,
            male = 252,
            female = 74,
            Extra = {
                { Drawable = 8,  Id = 15, Tex = 0, Name = "Extra Undershirt" },
                { Drawable = 3,  Id = 15, Tex = 0, Name = "Extra Gloves" },
                { Drawable = 10, Id = 0,  Tex = 0, Name = "Extra Decals" },
            }
        },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
    ["Pants"] = {
        Drawable = 4,
        Table = { Standalone = true, male = 61, female = 14 },
        Emote = { Dict = "re@construction", Anim = "out_of_breath", Move = 51, Dur = 1300 }
    },
    ["Bagoff"] = {
        Drawable = 5,
        Table = { Standalone = true, male = 0, female = 0 },
        Emote = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Dur = 1200 }
    },
}

Props = {
    ["visor"] = {
        Prop = 0,
        Variants = variations.visor,
        Emote = {
            On = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600 },
            Off = { Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200 }
        }
    },
    ["Hat"] = {
        Prop = 0,
        Emote = {
            On = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Dur = 600 },
            Off = { Dict = "missheist_agency2ahelmet", Anim = "take_off_helmet_stand", Move = 51, Dur = 1200 }
        }
    },
    ["Glasses"] = {
        Prop = 1,
        Emote = {
            On = { Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400 },
            Off = { Dict = "clothingspecs", Anim = "take_off", Move = 51, Dur = 1400 }
        }
    },
    ["Ear"] = {
        Prop = 2,
        Emote = {
            On = { Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900 },
            Off = { Dict = "mp_cp_stolen_tut", Anim = "b_think", Move = 51, Dur = 900 }
        }
    },
    ["Watch"] = {
        Prop = 6,
        Emote = {
            On = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 },
            Off = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
        }
    },
    ["Bracelet"] = {
        Prop = 7,
        Emote = {
            On = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 },
            Off = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Dur = 1200 }
        }
    },
}
