Citizen.CreateThread(function()
    RequestModel(Config.Ped)
    while not HasModelLoaded(Config.Ped) do
        Citizen.Wait(0)
    end
    local hunterped = CreatePed(
		2 --[[ integer ]], 
		Config.Ped --[[ Hash ]], 
		Config.PedCoords.x --[[ number ]], 
		Config.PedCoords.y --[[ number ]], 
		Config.PedCoords.z --[[ number ]], 
		Config.PedCoords.w --[[ number ]], 
		false --[[ boolean ]], 
		false --[[ boolean ]]
	)
    FreezeEntityPosition(hunterped, true)
    SetEntityInvincible(hunterped, true)
    PlaceObjectOnGroundProperly(hunterped)
    SetBlockingOfNonTemporaryEvents(hunterped, true)
    if Config.Action.actiontype == "drawtext" then
        while true do
            local wait = 1000
            local playercoord = GetEntityCoords(PlayerPedId())
            local diff = #(playercoord - vector3(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z))
            if (diff <= 3.0) then
                wait = 1
                DrawText3Ds(Config.PedCoords.x, Config.PedCoords.y, Config.PedCoords.z +0.90, Config.Translate["action"])
                if IsControlJustPressed(1,38) then
                    TriggerServerEvent("m-hunting:OpenHunting")
                end
            end
            Citizen.Wait(wait)
        end
    elseif Config.Action.actiontype == 'target' then
        if Config.Action.target == 'qb-target' then
            exports['qb-target']:AddTargetEntity(hunterped, {
                options = {
                    {
                        type = "server",
                        event = "m-hunting:OpenHunting",
                        icon = 'fas fa-clipboard',
                        label = Config.Translate["action"],
                    }
                },
                distance = 2.5,
            })
        elseif Config.Action.target == 'ox_target' then
            local ntid = {NetworkGetNetworkIdFromEntity(hunterped)}
            local options = {
                label = Config.Translate["action"],
                name = "hunterrhsn",
                icon = "fas fa-clipboard",
                distance = 3.0,
                serverEvent = "m-hunting:OpenHunting"
            }
            exports.ox_target:addEntity(ntid, options)
        end
    end
end)


RegisterNetEvent("m-hunting:client:SpawnVehicle")
AddEventHandler("m-hunting:client:SpawnVehicle", function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    TriggerServerEvent("qb-vehiclekeys:server:AcquireVehicleKeys", plate)
end)



function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = string.len(text) / 370
    DrawRect(0.0, 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end