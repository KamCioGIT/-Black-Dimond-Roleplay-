local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("emma:chargehim")
AddEventHandler("emma:chargehim", function(item, count)
    local src = source

    local Player = QBCore.Functions.GetPlayer(src)

    local check = Player.PlayerData.money.cash
    
    if Player then
		if check >= Config.toPay then
            Player.Functions.RemoveMoney('cash', Config.toPay)
            TriggerClientEvent("chip_cDoc:getHelp", src)
		else
            TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money.', 'error')
		end
    end
    

end)

RegisterNetEvent("emma:help")
AddEventHandler("emma:help", function(playertreat)

  local src = source

  local Player = QBCore.Functions.GetPlayer(src)

  TriggerClientEvent('hospital:client:Revive', src)
  print('it worked till server side')

end)