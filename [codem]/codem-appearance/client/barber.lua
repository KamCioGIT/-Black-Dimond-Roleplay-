CreateThread(function()
    while true do
        local cooldown = 1500
        local coords = GetEntityCoords(PlayerPedId())
        local near = false
        for _,v in pairs(Config.Barber.coords) do
            local dist = #(coords - v)
            if dist < 3.0 and not menuOpen then
                near = true
                cooldown = 0
                if Config.Barber.marker.enable then
                    local rgba = Config.Barber.marker.rgba
                    local size = Config.Barber.marker.size
                    local type = Config.Barber.marker.type

                    DrawMarker(type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, size, size, size, rgba[1] or 255, rgba[2] or 255, rgba[3] or 0, rgba[4] or 255, false, false, 0, true, false, false, false)
                end
                if Config.Barber.drawText.enable then
                    DrawText3D(v.x, v.y, v.z, Config.Barber.drawText.text)
                end
                if Config.Barber.textui.enable then                    
                    ShowHelpNotification(Config.Barber.textui.text)
                end
                if IsControlJustPressed(0, Config.Barber.openKey) then
                    OpenMenu("barber")
                end
            end
        end
        if not near then
            HideHelpNotification()
        end
        Wait(cooldown)
    end
end)

CreateThread(function()
    for k,v in pairs(Config.Barber.coords) do
        local blip = AddBlipForCoord(v)
        SetBlipSprite(blip, Config.Barber.blip.type)
        SetBlipColour(blip, Config.Barber.blip.color)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, Config.Barber.blip.size)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.Barber.blip.label)
        EndTextCommandSetBlipName(blip)
    end
end)