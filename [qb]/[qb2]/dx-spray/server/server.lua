local QBCore = exports['qb-core']:GetCoreObject()
SPRAYS = {
}

FastBlacklist = {}

Citizen.CreateThread(function()
    if Config.Blacklist then
        for _, word in pairs(Config.Blacklist) do
            FastBlacklist[word] = word
        end
    end
end)

function GetSprayAtCoords(pos)
    for _, spray in pairs(SPRAYS) do
        if spray.location == pos then
            return spray
        end
    end
end

RegisterNetEvent('dx-spray:addSpray')
AddEventHandler('dx-spray:addSpray', function(spray)
    local Source = source
    
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = xPlayer.Functions.GetItemByName("spray")
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['spray'], "remove")
    
    if item ~= nil and item.amount > 0 then
        xPlayer.Functions.RemoveItem("spray", 1)
        local i = 1
        while true do
            if not SPRAYS[i] then
                SPRAYS[i] = spray
                break
            else
                i = i + 1
            end
        end

        PersistSpray(spray)
        TriggerEvent('dx-sprays:addSpray', Source, spray.text, spray.location)
        TriggerClientEvent('dx-spray:setSprays', -1, SPRAYS)
    else
        TriggerClientEvent('QBCore:Notify', Source, Config.Text.NEED_SPRAY, "error")
    end
end)

function PersistSpray(spray)
    MySQL.Async.execute([[
        INSERT sprays
        (`x`, `y`, `z`, `rx`, `ry`, `rz`, `scale`, `text`, `font`, `color`, `interior`)
        VALUES
        (@x, @y, @z, @rx, @ry, @rz, @scale, @text, @font, @color, @interior)
    ]], {
        ['@x'] = spray.location.x,
        ['@y'] = spray.location.y,
        ['@z'] = spray.location.z,
        ['@rx'] = spray.realRotation.x,
        ['@ry'] = spray.realRotation.y,
        ['@rz'] = spray.realRotation.z,
        ['@scale'] = spray.scale,
        ['@text'] = spray.text,
        ['@font'] = spray.font,
        ['@color'] = spray.originalColor,
        ['@interior'] = spray.interior,
    })
end

Citizen.CreateThread(function()
    MySQL.Sync.execute([[
        DELETE FROM sprays 
        WHERE DATEDIFF(NOW(), created_at) >= @days
    ]], {['days'] = Config.SPRAY_PERSIST_DAYS})

    local results = MySQL.Sync.fetchAll([[
        SELECT x, y, z, rx, ry, rz, scale, text, font, color, created_at, interior
        FROM sprays
    ]])

    for _, s in pairs(results) do
        table.insert(SPRAYS, {
            location = vector3(s.x + 0.0, s.y + 0.0, s.z + 0.0),
            realRotation = vector3(s.rx + 0.0, s.ry + 0.0, s.rz + 0.0),
            scale = tonumber(s.scale) + 0.0,
            text = s.text,
            font = s.font,
            originalColor = s.color,
            interior = (s.interior == 1) and true or false,
        })
    end

    TriggerClientEvent('dx-spray:setSprays', -1, SPRAYS)
end)

RegisterNetEvent('dx-spray:playerSpawned')
AddEventHandler('dx-spray:playerSpawned', function()
    local Source = source
    TriggerClientEvent('dx-spray:setSprays', Source, SPRAYS)
end)

RegisterCommand('spray', function(source, args)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = xPlayer.Functions.GetItemByName("spray")
    
    if item ~= nil and item.amount > 0 then
        local sprayText = args[1]

        if FastBlacklist[sprayText] then
            TriggerClientEvent('QBCore:Notify', source, Config.Text.BLACKLISTED, "error")
        else
            if sprayText then
                if sprayText:len() <= 9 then
                    TriggerClientEvent('dx-spray:spray', source, args[1])
                else
                    TriggerClientEvent('QBCore:Notify', source, Config.Text.WORD_LONG, "error")
                end
            else
                TriggerClientEvent('QBCore:Notify', source, Config.Text.USAGE)
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', source, Config.Text.NEED_SPRAY, "error")
    end
end, false)

function HasSpray(serverId, cb)
    local xPlayer = QBCore.Functions.GetPlayer(serverId)
    local item = xPlayer.Functions.GetItemByName("spray")

    cb(item ~= nil and item.amount > 0)
end