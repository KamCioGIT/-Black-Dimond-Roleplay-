if Config.Fuel ~= 'lj-fuel' then
    return
end

function SetFuel(vehicle, fuelLevel)
    local success, error = pcall(function()
        exports['lj-fuel']:SetFuel(vehicle, fuelLevel)
    end)

    if not success then
        DebugPrint('You did not configure your fuel system and it is set to 100.0 in fuel, check in Config.Fuel')
        return 100.0
    end
end
