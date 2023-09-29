if Config.Fuel ~= 'FRFuel' then
    return
end

function SetFuel(vehicle, fuelLevel)
    SetVehicleFuelLevel(vehicle, fuelLevel + 0.0)
end
