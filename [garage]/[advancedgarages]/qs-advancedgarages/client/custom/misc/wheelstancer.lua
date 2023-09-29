--[[ 
    Events for Tuff's wheelstancer script, open source for personal testing and modifications.
    If you are interested in this script you should visit the store https://tuff-scripts.tebex.io/
]]

function WheelStancer(vehicle, plate)
    if GetResourceState(Config.Framework .. '-wheelstancer') == 'started' then
        TriggerServerCallback('advancedgarages:server:GetStanceValues', function(stance_value)
            if stance_value ~= nil then
                Wait(500)
                local veh = GetVehiclePedIsIn(PlayerPedId())
                TriggerServerEvent('Stancer_sv:LoadStanceValues', stance_value, VehToNet(veh))
            end
        end, plate)
    end
end