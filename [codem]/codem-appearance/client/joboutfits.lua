my_job = "unemployed"

function CheckJobOutfitIsAllowed(jobs)
    for _,v in pairs(jobs) do
        if v == my_job then
            return true
        end
    end
    return false
end

CreateThread(function()
    Wait(3000)
    WaitCore()
    WaitPlayer()
    my_job = GetPlayerJob()
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
    my_job = job.name
end)

RegisterNetEvent("QBCore:Player:SetPlayerData")
AddEventHandler("QBCore:Player:SetPlayerData", function(data)
    my_job = data.job.name
end)

CreateThread(function()
    while true do
 
        local cooldown = 1500
        local coords = GetEntityCoords(PlayerPedId())
        local near = false

        for _,v in pairs(Config.JobOutfitsInteraction.data) do
            for _,pos in pairs(v.coords) do
                local dist = #(coords - pos)
                if dist < 3.0 and not menuOpen and CheckJobOutfitIsAllowed(v.allowedJobs) then
                    cooldown = 0
                    near = true
                    if Config.JobOutfitsInteraction.marker.enable then
                        local rgba = Config.JobOutfitsInteraction.marker.rgba
                        local size = Config.JobOutfitsInteraction.marker.size
                        local type = Config.JobOutfitsInteraction.marker.type
    
                        DrawMarker(type, pos, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, size, size, size, rgba[1] or 255, rgba[2] or 255, rgba[3] or 0, rgba[4] or 255, false, false, 0, true, false, false, false)
                    end    
                    if Config.JobOutfitsInteraction.drawText.enable then
                        DrawText3D(pos.x, pos.y, pos.z, Config.JobOutfitsInteraction.drawText.text)
                    end
                    if Config.JobOutfitsInteraction.textui.enable then                    
                        ShowHelpNotification(Config.JobOutfitsInteraction.textui.text)
                    end
                    if IsControlJustPressed(0, Config.JobOutfitsInteraction.openKey) then
                        OpenMenu("job")
                        local gender = 'female'
                        if IsPedMale(PlayerPedId()) then
                            gener = 'male'
                        end
                        if Config.JobOutfits[GetPlayerJob()] and Config.JobOutfits[GetPlayerJob()][gender] and Config.JobOutfits[GetPlayerJob()][gender][GetPlayerJobGrade()] then
                            NuiMessage("SET_JOB_OUTFIT_DATA", Config.JobOutfits[GetPlayerJob()][gender][GetPlayerJobGrade()])
                        else
                            NuiMessage("SET_JOB_OUTFIT_DATA", {})
                        end
                    end
                end
            end
        end
        if not near then
            HideHelpNotification()
        end
        Wait(cooldown)
    end
end)

RegisterNUICallback("wearJobClothing", function(data, cb)
    TriggerEvent('skinchanger:loadPedSkin', data.skin, PlayerPedId())
end)