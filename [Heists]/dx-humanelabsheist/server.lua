local QBCore = exports['qb-core']:GetCoreObject()
local lastrob = 0
local start = true
discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/894401950202863667/-o-pIrmvxQDH-EU9LGSTwo__oy1erDSV-ye',
    ['name'] = 'Humane Lab Heist',
    ['image'] = 'https://i.ibb.co/y43Dfvt/886670106665566238.png'
}

QBCore.Functions.CreateUseableItem(Config['HumaneLabs']['wetsuit']['itemName'], function(source, item)
    local src = source

    local player = QBCore.Functions.GetPlayer(src)
    if player then
        TriggerClientEvent('humanelabsheist:client:wearWetsuit', src)
        player.Functions.RemoveItem(Config['HumaneLabs']['wetsuit']['itemName'], 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config['HumaneLabs']['wetsuit']['itemName']], "remove")
    end
end)

QBCore.Functions.CreateCallback('humanelabsheist:server:checkPoliceCount', function(source, cb)
    local src = source
    local players = QBCore.Functions.GetPlayers()
    local policeCount = 0

    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' and player.PlayerData.job.onduty then
            policeCount = policeCount + 1
        end
    end

    if policeCount >= Config['HumaneLabs']['requiredPoliceCount'] then
        cb(true)
    else
        cb(false)
        TriggerClientEvent('humanelabsheist:client:showNotification', src, Strings['need_police'])
    end
end)

QBCore.Functions.CreateCallback('humanelabsheist:server:checkTime', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    
    if (os.time() - lastrob) < Config['HumaneLabs']['nextRob'] and lastrob ~= 0 then
        local seconds = Config['HumaneLabs']['nextRob'] - (os.time() - lastrob)
        TriggerClientEvent('humanelabsheist:client:showNotification', src, Strings['wait_nextrob'] .. ' ' .. math.floor(seconds / 60) .. ' ' .. Strings['minute'])
        cb(false)
    else
        lastrob = os.time()
        start = true
        discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.citizenid, ' started the Humane Labs. Heist!')
        cb(true)
    end
end)

RegisterServerEvent('humanelabsheist:server:policeAlert')
AddEventHandler('humanelabsheist:server:policeAlert', function(coords)
    local players = QBCore.Functions.GetPlayers()
    
    for i = 1, #players do
        local player = QBCore.Functions.GetPlayer(players[i])
        if player.PlayerData.job.name == 'police' and player.PlayerData.job.onduty then
            TriggerClientEvent('humanelabsheist:client:policeAlert', players[i], coords)
        end
    end
end)


RegisterServerEvent('humanelabsheist:server:adddiving')
AddEventHandler('humanelabsheist:server:adddiving', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local letcount = 1
    Player.Functions.AddItem('diving_scuba', letcount)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items['diving_scuba'], "add")
end)

RegisterServerEvent('humanelabsheist:server:heistRewards')
AddEventHandler('humanelabsheist:server:heistRewards', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)

    if player then
        if start then
            if Config['HumaneLabs']['rewards']['money'] > 0 then
                player.Functions.AddMoney("cash", Config['HumaneLabs']['rewards']['money'], "Humane Lab Heist")
                TriggerClientEvent('QBCore:Notify', src, 'You have recieved $'..Config['HumaneLabs']['rewards']['money'].." as Humane Lab Heist payment.")
                discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.citizenid, ' gain $' .. Config['HumaneLabs']['rewards']['money'])
            end

            -- if Config['HumaneLabs']['rewards']['blackMoney'] > 0 then
            --     player.addAccountMoney('black_money', Config['HumaneLabs']['rewards']['blackMoney'])
            --     discordLog(player.getName() ..  ' - ' .. player.getIdentifier(), ' gain $' .. Config['HumaneLabs']['rewards']['blackMoney'] .. 'black money')
            -- end

            if Config['HumaneLabs']['rewards']['items'] ~= nil then
                for k, v in pairs(Config['HumaneLabs']['rewards']['items']) do
                    local rewardCount = v['count']()
                    player.Functions.AddItem(v['name'], rewardCount)
                    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v['name']], "add")
                    discordLog(player.PlayerData.name ..  ' - ' .. player.PlayerData.citizenid, ' gain this: ' .. v['name'] .. ' x' .. rewardCount)
                end
            end
            
            start = false
        end
    end
end)

function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = discord['name'], embeds = data, avatar_url = discord['image']}), { ['Content-Type'] = 'application/json' })
end