local QBCore = exports['qb-core']:GetCoreObject()
local lastNapping = 0
local queryRoom = false

QBCore.Functions.CreateCallback('kidnapping:server:checkQueryRoom', function(source, cb)
    cb(queryRoom)
end)

RegisterServerEvent('kidnapping:server:syncQueryRoom')
AddEventHandler('kidnapping:server:syncQueryRoom', function()
    queryRoom = not queryRoom
end)

QBCore.Functions.CreateCallback('kidnapping:server:checkTime', function(source, cb)
    local src = source
    
    if (os.time() - lastNapping) < Config['Kidnapping']['nextNapping'] and lastNapping ~= 0 then
        local seconds = Config['Kidnapping']['nextNapping'] - (os.time() - lastNapping)
        TriggerClientEvent('QBCore:Notify', src, Strings['wait_nextnapping'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'], 'error')
        cb(false)
    else
        lastNapping = os.time()
        cb(true)
    end
end)

-- RegisterNetEvent('kidnapping:server:policeAlert')
-- AddEventHandler('kidnapping:server:policeAlert', function(coords)
--     local players = ESX.GetPlayers()
    
--     for i = 1, #players do
--         local player = ESX.GetPlayerFromId(players[i])
--         if player['job']['name'] == 'police' then
--             TriggerClientEvent('kidnapping:client:policeAlert', players[i], coords)
--         end
--     end
-- end)

RegisterServerEvent('kidnapping:server:giveVideoRecord')
AddEventHandler('kidnapping:server:giveVideoRecord', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        player.Functions.AddItem(Config['Kidnapping']['videoRecordItem'], 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config['Kidnapping']['videoRecordItem']], "add")
    end
end)

RegisterServerEvent('kidnapping:server:finish')
AddEventHandler('kidnapping:server:finish', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        local count = player.Functions.GetItemByName(Config['Kidnapping']['videoRecordItem']).amount
        if count > 0 then -- Crash, drop, etc. that may occur after taking a video recording in the previous job. I make him sell all the video recordings on it for situations like.
            player.Functions.RemoveItem(Config['Kidnapping']['videoRecordItem'], count)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config['Kidnapping']['videoRecordItem']], "remove")

            local data = {
                worth = count * Config['Kidnapping']['rewardCash']
            }
            player.Functions.AddItem('markedbills', 1, false, data)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["markedbills"], 'add')
        end
        local random = math.random(1, #Config['Kidnapping']['randomRewardItems'])
        local item = Config['Kidnapping']['randomRewardItems'][random]
        player.Functions.AddItem(item, math.random(1, 5))
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
    end
end)