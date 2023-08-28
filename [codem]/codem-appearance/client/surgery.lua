CreateThread(function()
    while true do
        local cooldown = 1500
        local coords = GetEntityCoords(PlayerPedId())
        local near = false

        for _,v in pairs(Config.Surgery.coords) do
            local dist = #(coords - v)
            if dist < 3.0 and not menuOpen then
                cooldown = 0
                near = true
                if Config.Surgery.marker.enable then
                    local rgba = Config.Surgery.marker.rgba
                    local size = Config.Surgery.marker.size
                    local type = Config.Surgery.marker.type

                    DrawMarker(type, v, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, size, size, size, rgba[1] or 255, rgba[2] or 255, rgba[3] or 0, rgba[4] or 255, false, false, 0, true, false, false, false)
                end
                if Config.Surgery.drawText.enable then
                    DrawText3D(v.x, v.y, v.z, Config.Surgery.drawText.text)
                end
                if Config.Surgery.textui.enable then                    
                    ShowHelpNotification(Config.Surgery.textui.text)
                end
                if IsControlJustPressed(0, Config.Surgery.openKey) then
                    OpenMenu("surgery")
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
    for k,v in pairs(Config.Surgery.coords) do
        local blip = AddBlipForCoord(v)
        SetBlipSprite(blip, Config.Surgery.blip.type)
        SetBlipColour(blip, Config.Surgery.blip.color)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, Config.Surgery.blip.size)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.Surgery.blip.label)
        EndTextCommandSetBlipName(blip)
    end
end)