


Citizen.CreateThread(function()
    Citizen.Wait(1000)
    if Config.Framework == 'esx' then 
        frameworkObject.RegisterServerCallback("trade:getPlayerInventory", function(source, cb)
            local src = source
            local xPlayer = frameworkObject.GetPlayerFromId(src)
            local items = xPlayer.getInventory() 
            local formattedItems = {}
            for k, v in pairs(items) do
                local count = v.amount or v.count
                if count  >   0 then
                    table.insert(formattedItems, {
                        name = v.name,
                        count = count,
                        label = v.label or v.name,
                    })
                end
            end
            cb(formattedItems)
        end)
    else
        frameworkObject.Functions.CreateCallback("trade:getPlayerInventory", function(source, cb)
            local src = source
            local Player = frameworkObject.Functions.GetPlayer(src)
            local items = Player.PlayerData.items
            local formattedItems = {}
            if not Config.MoneyItems then 
                money = Player.Functions.GetMoney('cash')
            end
            for k, v in pairs(items) do
                local count = v.amount or v.count
                if  count > 0 then
                    table.insert(formattedItems, {
                        name = v.name,
                        count = count,
                        label = frameworkObject.Shared.Items[v.name]["label"] or v.label,
                        info  = v.info
                    })
                end
                
            end
            print(json.encode(formattedItems))
            if not  Config.MoneyItems then 
                cb(formattedItems,money)
            else
                cb(formattedItems)
            end
        end)
    end
    function tradeAddItem(id,itemname,count,info)

        if Config.Framework == 'esx' then 
            local xPlayer = frameworkObject.GetPlayerFromId(tonumber(id))
            if xPlayer then 
                if not Config.MoneyItems then 
                 
                    if itemname == 'cash' then 
                    
                        xPlayer.addMoney(tonumber(count))
                    else
                
                        xPlayer.addInventoryItem(itemname,tonumber(count),false,info)
                    end
                else
                    xPlayer.addInventoryItem(itemname, tonumber(count))    
                end
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(tonumber(id))
            if xPlayer then 
                if not Config.MoneyItems then 
              
                    if itemname == 'cash' then 
                    
                        xPlayer.Functions.AddMoney('cash', tonumber(count))
                    else
                
                        xPlayer.Functions.AddItem(itemname,tonumber(count),false,info)
                    end
                else
                    xPlayer.Functions.AddItem(itemname, tonumber(count))    
                end
            end

        end
    end

    function tradeRemoveItem(id,itemname,count)
        if Config.Framework == 'esx' then 
            local xPlayer = frameworkObject.GetPlayerFromId(tonumber(id))
            if xPlayer then 
                if not Config.MoneyItems then 
                 
                    if itemname == 'cash' then 
                        xPlayer.removeMoney(tonumber(count))
                    else
                        xPlayer.removeInventoryItem(itemname, tonumber(count))    
                    end
                else
                    xPlayer.removeInventoryItem(itemname, tonumber(count))    
                end
               
            end
        else
            local xPlayer = frameworkObject.Functions.GetPlayer(id)
            if xPlayer then 
                if not Config.MoneyItems then 
                 
                    if itemname == 'cash' then 
                        xPlayer.Functions.RemoveMoney('cash', tonumber(count))
                    else
                        xPlayer.Functions.RemoveItem(itemname, tonumber(count))    
                    end
                else
                    xPlayer.Functions.RemoveItem(itemname, tonumber(count))    
                end
            end
        end
    end

    RegisterCommand(Config.Command, function(source, args, rawCommand)
        if #args == 1 then
            local targetId = tonumber(args[1])
            if targetId then
                local senderplayer = GetPlayerPed(source)
                local receiverPlayer = GetPlayerPed(targetId)
                local sendercoords = GetEntityCoords(senderplayer)
                local receiverCoords = GetEntityCoords(receiverPlayer)
                local dist = #(sendercoords - receiverCoords)
                if not pendingTrades[source] then
                    if dist <= 3 then 
                        if targetId ~= source then
                            sendTradeRequest(source, targetId)
                        else
                            Config.Notification(Config.Notifications["nearby"].message, Config.Notifications["nearby"].type, true, source)
                        end
                    else
                        Config.Notification(Config.Notifications["yourself"].message, Config.Notifications["yourself"].type, true, source)
                    end
                else
                    Config.Notification(Config.Notifications["activetrade"].message, Config.Notifications["activetrade"].type, true, source)
                end
            else
                Config.Notification(Config.Notifications["invalidid"].message, Config.Notifications["invalidid"].type, true, source)
            end
        else
            Config.Notification(Config.Notifications["reqex"].message, Config.Notifications["reqex"].type, true, source)
        end
    end)
end)



