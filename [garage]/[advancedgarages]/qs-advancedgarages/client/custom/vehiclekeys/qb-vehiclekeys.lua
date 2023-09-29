if Config.Vehiclekeys ~= 'qb-vehiclekeys' then
    return
end

function AddVehiclekeys(vehicle, plate, item)
    TriggerEvent('vehiclekeys:client:SetOwner', plate)
end

function RemoveVehiclekeys(vehicle, plate)
    return
end
