local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('qb-robparking:server:1I1i01I1')
AddEventHandler('qb-robparking:server:1I1i01I1', function(count)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local data = {
        worth = math.random(Config.MoneyMin,Config.MoneyMax)
    }

    xPlayer.Functions.AddItem('markedbills', 1, false, data)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["markedbills"], 'add')
    TriggerClientEvent(Config.CoreName..':Notify', src, 'Recieved blackmoney from the Parking meter', "success")
end)

