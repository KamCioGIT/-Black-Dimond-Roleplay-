local QBCore = exports['qb-core']:GetCoreObject()

local timer = Config.WaitTime * 60 * 10000--math.random(1000, 10000)

RegisterServerEvent('qb-dumpster:server:startDumpsterTimer')
AddEventHandler('qb-dumpster:server:startDumpsterTimer', function(dumpster)
    startTimer(source, dumpster)
end)

RegisterServerEvent('qb-dumpster:server:giveDumpsterReward')
AddEventHandler('qb-dumpster:server:giveDumpsterReward', function()
    local Player = QBCore.Functions.GetPlayer(source)
     local itemcount = math.random(1, 8)
    local randomItem = Config.Items[math.random(itemcount, #Config.Items)]
    
    if Player.Functions.AddItem(randomItem, itemcount) then
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[randomItem], "add")
    else
        TriggerClientEvent("QBCore:Notify", source, "You dont have enough space", "error")
    end
end)

function startTimer(id, object)
    Citizen.CreateThread(function()
        Citizen.Wait(timer)
        TriggerClientEvent('qb-dumpster:server:startDumpsterTimer', id, object)
    end)
end
