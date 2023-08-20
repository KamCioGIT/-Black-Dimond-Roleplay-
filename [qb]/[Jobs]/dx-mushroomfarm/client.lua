local QBCore = exports['qb-core']:GetCoreObject()

local hasjob = false
local ciuperci = 0
local ThreadAlreadyRan = false
local mushroomFarmBlip = nil
local PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job

    if PlayerJob.name == "farmer" then
        local mushroomFarmBlip = AddBlipForCoord(472.09, 6459.56, 29.928)
        SetBlipSprite(mushroomFarmBlip, 789)  
        SetBlipScale(mushroomFarmBlip, 0.5) 
        SetBlipDisplay(mushroomFarmBlip, 4)
        SetBlipColour(mushroomFarmBlip, 5) 
        SetBlipAsShortRange(mushroomFarmBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Mushroom Farm')
        EndTextCommandSetBlipName(mushroomFarmBlip)

        RunWorkThread()
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    RemoveFarmBlip()
end)

function RemoveFarmBlip() 
    if mushroomFarmBlip ~= nil then
        RemoveBlip(mushroomFarmBlip)
        mushroomFarmBlip = nil
    end
end

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    local OldPlayerJob = PlayerJob.name
    PlayerJob = JobInfo

    if PlayerJob.name == "farmer" then
        local mushroomFarmBlip = AddBlipForCoord(472.09, 6459.56, 29.928)
        SetBlipSprite(mushroomFarmBlip, 273)  
        SetBlipScale(mushroomFarmBlip, 0.5) 
        SetBlipDisplay(mushroomFarmBlip, 4)
        SetBlipColour(mushroomFarmBlip, 48) 
        SetBlipAsShortRange(mushroomFarmBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('Mushroom Farm')
        EndTextCommandSetBlipName(mushroomFarmBlip)

        RunWorkThread()
    elseif OldPlayerJob == "farmer" then
        RemoveFarmBlip()
    end
end)

function DrawText3D(x, y, z, text, scl)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)
    local scale = (1 / dist) * scl
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    if onScreen then
        SetTextScale(0.0 * scale, 1.1 * scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

local coordonate = {{473.89, 6500.22, 28.90}, {481.98, 6505.66, 29.05}, {490.67, 6500.4, 29.25},
                    {486.36, 6483.05, 29.25}, {482.27, 6471.61, 28.90}, {467.93, 6472.52, 28.90}}

local sleep = 2000

function RunWorkThread() 
    if not ThreadAlreadyRan then
        CreateThread(function()
            while LocalPlayer.state.isLoggedIn and PlayerJob.name == "farmer" do
                Citizen.Wait(sleep)
                perforw = false
                local pos = GetEntityCoords(PlayerPedId())
                local metrii = math.floor(GetDistanceBetweenCoords(472.09, 6459.56, 29.92, GetEntityCoords(PlayerPedId())))
                if ciuperci == 6 then
                    perform = true
                    DrawText3D(pos.x, pos.y, pos.z, "~y~Go and Sell the Mushrooms", 1.2)
                end
                if hasjob == true then
                    for i, v in pairs(coordonate) do
                        local metrii2 = math.floor(GetDistanceBetweenCoords(v[1], v[2], v[3], GetEntityCoords(PlayerPedId())))
                        if ciuperci == 1 or ciuperci == 2 or ciuperci == 3 or ciuperci == 4 or ciuperci == 5 then
                            perform = true
                            DrawText3D(pos.x, pos.y, pos.z, "Mushrooms ~r~" .. ciuperci .. "~w~/~g~6", 1.2)
                        end
                        if coordonate[i] ~= nil then
                            if metrii2 <= 3 then
                                perform = true
                                DrawText3D(v[1], v[2], v[3] + 0.7, "To pick mushrooms ~y~[E]~w~ ", 1.2)
                                if IsControlJustPressed(1, 51) then
                                    table.remove(coordonate, i)
                                    local playerPed = PlayerPedId()
                                    TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_PARKING_METER', 0, false)
                                    QBCore.Functions.Progressbar("harvesting_mushrooms", "Harvesting...", 8000, false, false,
                                        {
                                            disableMovement = true,
                                            disableCarMovement = true,
                                            disableMouse = false,
                                            disableCombat = true
                                        }, {}, {}, {}, function()
        
                                            ClearPedTasks(playerPed)
                                            QBCore.Functions.Notify('1 Mushroom added')
        
                                            ciuperci = ciuperci + 1
                                            if ciuperci == 6 then
                                                SetNewWaypoint(1725.1472167969, 4642.4184570313)
                                            end
                                        end, function() -- Cancel
                                            ClearPedTasks(playerPed)
                                            QBCore.Functions.Notify("Canceled..", "error")
                                        end)
                                end
                            end
                        else
                            perform = true
                            DrawText3D(coordonate[i] + 0.7, "Mushrooms already collected", 1.2)
                        end
                    end
                end
                if metrii <= 3 then
                    perform = true
                    DrawText3D(pos.x, pos.y, pos.z + 0.6,
                        "To become a Mushroom Farmer ~y~[E]~w~ \n To sell mushrooms ~y~[Y]~w~", 1.2)
                    if IsControlJustPressed(1, 51) then
                        if hasjob == false then
                            cosdeoua = CreateObject(GetHashKey("prop_fruit_basket"), pos.x, pos.y, pos.z, true, true, true)
                            AttachEntityToEntity(cosdeoua, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 0.22,
                                -0.3 + 0.25, 0.0 + 0.16, 160.0, 90.0, 125.0, true, true, false, true, 1, true)
                            QBCore.Functions.Notify('Mushroom Basket Added, Lets Pick Mushrooms')
        
                            hasjob = true
                            SetNewWaypoint(795.26397705078, 4269.4155273438)
                            for i, v in pairs(coordonate) do
                                cvprop = CreateObject(GetHashKey('prop_stoneshroom1'), v[1], v[2], v[3], false)
                            end
                        elseif hasjob == true then
                            QBCore.Functions.Notify('You have already been hired as a Mushroom Farmer.')
                        end
                    elseif IsControlJustPressed(1, 246) then
                        if ciuperci == 6 then
                            table.insert(coordonate, {790.95959472656, 4286.9658203125, 55.545942687988})
                            table.insert(coordonate, {785.61285400391, 4288.5952148438, 55.76137008667})
                            table.insert(coordonate, {777.37567138672, 4286.013671875, 55.376140594482})
                            table.insert(coordonate, {783.12194824219, 4294.5239257813, 58.114027404785})
                            table.insert(coordonate, {765.93200683594, 4276.0834960938, 55.820201873779 - 1})
                            table.insert(coordonate, {759.37152099609, 4287.658203125, 60.372291564941 - 1})
                            TriggerServerEvent("dx-mushroomfarmer:sell")
                            ciuperci = 0
                            hasjob = false
                            DeleteEntity(cosdeoua)
                            DeleteEntity(cosdeoua)
                        else
                            QBCore.Functions.Notify('Keep Looking.')
        
                        end
                    end
                end
                if perform then
                    sleep = 7
                elseif not perform then
                    sleep = 2000
                end
            end
        end)
    end
end