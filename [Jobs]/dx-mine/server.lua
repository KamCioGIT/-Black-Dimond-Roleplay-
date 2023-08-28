local QBCore = exports['qb-core']:GetCoreObject()
--[[
RegisterServerEvent('qb-mine:getItem')
AddEventHandler('qb-mine:getItem', function()
    local xPlayer, randomItem = QBCore.Functions.GetPlayer(source), Config.Items[math.random(1, #Config.Items)]
    if math.random(0, 100) <= Config.ChanceToGetItem then
        xPlayer.Functions.AddItem(randomItem, 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[randomItem], "add")
        TriggerClientEvent("QBCore:Notify", source, "Je hebt een ".. randomItem .." los gemined", "success", 10000)
    end
end)
]]--


RegisterServerEvent('qb-mine:getItem')
AddEventHandler('qb-mine:getItem', function()
	local xPlayer, randomItem = QBCore.Functions.GetPlayer(source), Config.Items[math.random(1, #Config.Items)]
	print("jelll")
	if math.random(0, 100) <= Config.ChanceToGetItem then
		local Item = xPlayer.Functions.GetItemByName(randomItem)
		if Item == nil then
			xPlayer.Functions.AddItem(randomItem, 1)
            
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[randomItem], 'add')
		else	
		if Item.amount < 35 then
        
        xPlayer.Functions.AddItem(randomItem, 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[randomItem], 'add')
		else
			TriggerClientEvent('QBCore:Notify', source, 'Inventory is full', "error")  
		end
	    end
    end
end)

local ItemList = {
    ["coal"] = math.random(10, 40),
    ["kno3"] = math.random(10, 60),
    ["sulfur"] = math.random(30, 60),
    ["diamond"] = math.random(3500, 6500),
    ["emerald"] = math.random(4500, 8500)
}

RegisterServerEvent('qb-mine:sell')
AddEventHandler('qb-mine:sell', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = 0
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if ItemList[Player.PlayerData.items[k].name] ~= nil then 
                    price = price + (ItemList[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
					TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[k].name], "remove")
                end
            end
        end
    
        Player.Functions.AddMoney("cash", price)
        TriggerClientEvent('QBCore:Notify', src, "You have sold your items for $"..price)
    end
end)
