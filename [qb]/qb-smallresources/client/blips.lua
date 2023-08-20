CreateThread(function() 
    for k, v in pairs(Config.Blips) do
        local blip = AddBlipForCoord(v.coords)
        SetBlipSprite(blip, v.blip_sprite)  
        SetBlipScale(blip, 0.8) 
        SetBlipColour(blip, v.blip_color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(blip)
    end
end)