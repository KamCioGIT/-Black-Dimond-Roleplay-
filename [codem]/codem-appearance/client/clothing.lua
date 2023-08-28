CreateThread(function()
    while true do
        local cooldown = 1500
        local coords = GetEntityCoords(PlayerPedId())
        local near = false

        for _,v in pairs(Config.Clothing.coords) do
            local dist = #(coords - v[1])
            if dist < 3.0 and not menuOpen then
                cooldown = 0
                near = true

                if Config.Clothing.marker.enable then
                    local rgba = Config.Clothing.marker.rgba
                    local size = Config.Clothing.marker.size
                    local type = Config.Clothing.marker.type

                    DrawMarker(type, v[1], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, size, size, size, rgba[1] or 255, rgba[2] or 255, rgba[3] or 0, rgba[4] or 255, false, false, 0, true, false, false, false)
                end
                if Config.Clothing.drawText.enable then
                    DrawText3D(v[1].x, v[1].y, v[1].z, Config.Clothing.drawText.text)
                end
                if Config.Clothing.textui.enable then                    
                    ShowHelpNotification(Config.Clothing.textui.text)
                end
                if IsControlJustPressed(0, Config.Clothing.openKey) then
                    OpenMenu(v[2])
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
    for k,v in pairs(Config.Clothing.coords) do
        local blip = AddBlipForCoord(v[1])
        SetBlipSprite(blip, Config.Clothing.blip.type)
        SetBlipColour(blip, Config.Clothing.blip.color)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, Config.Clothing.blip.size)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.Clothing.blip.label)
        EndTextCommandSetBlipName(blip)
    end
end)