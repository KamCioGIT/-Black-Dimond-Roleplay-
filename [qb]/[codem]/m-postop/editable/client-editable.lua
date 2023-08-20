RegisterNetEvent("m-postop-client:DetachHotwire")
AddEventHandler("m-postop-client:DetachHotwire",function(plate, vehicle)
    -- instead your hotwire export
    TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate) -- for qb-vehiclekeys
end)

Citizen.CreateThread(function()
    while true do
        local wait = 1000
        if not HSN.Client.IsPackageClaimed and HSN.Client.IsJobStarted then
            if jobvehicle ~= 0 and jobvehicle ~= nil then
                local ped = PlayerPedId()
                local pos = GetEntityCoords(ped)
                local vehpos = GetEntityCoords(jobvehicle)
                if #(pos - vehpos) < 4.0 and not IsPedInAnyVehicle(ped) then
                    wait = 5
                    text = "Package"
                    if #(pos - vehpos) < 3.0 and not IsPedInAnyVehicle(ped) then
                        text = "E - Package"
                        if IsControlJustPressed(0, 38) then
                            HSN.SetPackageAnim()
                        end
                    end
                    HSN.DrawText(vehpos.x, vehpos.y, vehpos.z, text)
                end
            end
        end
        Citizen.Wait(wait)
    end
end)

function GetPlayerJob()
    local playerData = HSN.Config.Framework == "new-qb" or HSN.Config.Framework == "old-qb" and frameworkObject.Functions.GetPlayerData() or frameworkObject.GetPlayerData()
    if not playerData then return end
    return playerData.job.name
end