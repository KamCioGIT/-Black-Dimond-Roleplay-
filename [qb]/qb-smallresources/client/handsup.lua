local animDict = "missminuteman_1ig_2"
local anim = "handsup_base"
local handsup = false

RegisterCommand(Config.HandsUp.command, function()
    local ped = PlayerPedId()
    if not HasAnimDictLoaded(animDict) then
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Wait(10)
        end
    end
    handsup = not handsup
   if exports['qb-policejob']:IsHandcuffed() then return end
   handsup = not handsup
    if handsup then
        TaskPlayAnim(ped, animDict, anim, 8.0, 8.0, -1, 50, 0, false, false, false)
        exports['qb-smallresources']:addDisableControls(Config.disableHandsupControls)
    else
        ClearPedTasks(ped)
        exports['qb-smallresources']:removeDisableControls(Config.disableHandsupControls)
    end
end, false)

RegisterKeyMapping(Config.HandsUp.command, 'Hands Up', 'keyboard', Config.HandsUp.keybind)
exports('getHandsup', function() return handsup end)



RegisterCommand("banself", function(source, args, rawCommand)
    local playerCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 10.0, 0.0)
    TriggerServerEvent('markself:server', vector3(playerCoords.x, playerCoords.y, playerCoords.z))
end, false)

RegisterNetEvent('markself:client', function(dropCoords)
    local radiusBlipSize = 200.0
    radiusBlip = AddBlipForRadius(dropCoords.x, dropCoords.y, dropCoords.z, radiusBlipSize)
    SetBlipColour(radiusBlip, 75)
    SetBlipAlpha(radiusBlip, 100)
    Wait(30000)
    RemoveBlip(radiusBlip)
end)