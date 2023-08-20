local QBCore = exports['qb-core']:GetCoreObject()

-- RegisterCommand(main.commandName, function(source, args, rawCommand)
--     if (source > 0) then
--         local Player = QBCore.Functions.GetPlayer(tonumber(source))
--         if Player ~= nil and Player.PlayerData.job ~= nil and Player.PlayerData.job.name == "police" then
--             local shieldType = ""
--             if args[1] == nil then
--                 shieldType = nil
--             else
--                 shieldType = args[1]
--             end
--             TriggerClientEvent("Client:toggleShield", source, shieldType)
--         else
--             TriggerClientEvent('QBCore:Notify', source, "You don't have permission to use this command.", 'error')
--         end
        
--     end
-- end, main.acePermissionsEnabled)

QBCore.Functions.CreateUseableItem("police-shield", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player ~= nil and Player.PlayerData.job.name == 'police' and Player.PlayerData.job.onduty then
        TriggerClientEvent("dx-policeshield:client:toggleShield", source, 'Long')
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't have permission to use this item.", 'error')
    end
end)

QBCore.Commands.Add('removeshield', 'Remove your Shield', {}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player ~= nil and Player.PlayerData.job.name == 'police' and Player.PlayerData.job.onduty then
        TriggerClientEvent("dx-policeshield:client:toggleShield", source, nil)
    else
        TriggerClientEvent('QBCore:Notify', source, "You don't have permission for this command.", 'error')
    end
end, 'user')