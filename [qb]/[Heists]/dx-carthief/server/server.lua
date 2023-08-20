local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('dx-carthief:setMoney')
AddEventHandler('dx-carthief:setMoney', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local data = {
        worth = Config.paid
    }
    
    Player.Functions.AddItem('markedbills', 1, false, data)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["markedbills"], 'add')
    TriggerClientEvent('esx:showNotification', src, "You have delivered the vehicle and you were paid ~r~$".. Config.paid)
end)