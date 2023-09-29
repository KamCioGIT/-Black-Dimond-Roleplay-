if Config.Fuel ~= 'ND_Fuel' then
    return
end

function SetFuel(vehicle, fuelLevel)
    SetVehicleFuelLevel(vehicle, fuelLevel + 0.0)
    DecorSetFloat(vehicle, '_ANDY_FUEL_DECORE_', fuelLevel + 0.0)
end