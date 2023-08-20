local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("spray_remover", function(playerId)
    TriggerClientEvent('dx-spray:removeClosestSpray', playerId)
end)


RegisterNetEvent('dx-spray:remove')
AddEventHandler('dx-spray:remove', function(pos)
    local Source = source

    local xPlayer = QBCore.Functions.GetPlayer(Source)
    local item = xPlayer.Functions.GetItemByName("spray_remover")
    
    if item ~= nil and item.amount > 0 then
        xPlayer.Functions.RemoveItem("spray_remover", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['spray_remover'], "remove")
        local sprayAtCoords = GetSprayAtCoords(pos)

        MySQL.Async.execute([[
            DELETE FROM sprays WHERE x=@x AND y=@y AND z=@z LIMIT 1
        ]], {
            ['@x'] = pos.x,
            ['@y'] = pos.y,
            ['@z'] = pos.z,
        })

        for idx, s in pairs(SPRAYS) do
            if s.location.x == pos.x and s.location.y == pos.y and s.location.z == pos.z then
                SPRAYS[idx] = nil
            end
        end
        TriggerClientEvent('dx-spray:setSprays', -1, SPRAYS)

        local sprayAtCoordsAfterRemoval = GetSprayAtCoords(pos)

        -- ensure someone doesnt bug it so its trying to remove other tags
        -- while deducting loyalty from not-deleted-but-at-coords tag
        if sprayAtCoords and not sprayAtCoordsAfterRemoval then
            TriggerEvent('dx-sprays:removeSpray', Source, sprayAtCoords.text, sprayAtCoords.location)
        end
    end
end)